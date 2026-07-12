.class public final Lcom/android/server/app/GameManagerService;
.super Landroid/app/IGameManagerService$Stub;
.source "GameManagerService.java"


# instance fields
.field public final mConfigs:Landroid/util/ArrayMap;

.field public final mContext:Landroid/content/Context;

.field public mDeviceConfigListener:Lcom/android/server/app/GameManagerService$DeviceConfigListener;

.field public final mDeviceConfigLock:Ljava/lang/Object;

.field public mGameDefaultFrameRateValue:F

.field public final mGameForegroundUids:Ljava/util/Set;

.field final mGameModeInterventionListFile:Landroid/util/AtomicFile;

.field public final mGameModeListenerLock:Ljava/lang/Object;

.field public final mGameModeListeners:Landroid/util/ArrayMap;

.field public final mGameServiceController:Lcom/android/server/app/GameServiceController;

.field public final mGameStateListenerLock:Ljava/lang/Object;

.field public final mGameStateListeners:Landroid/util/ArrayMap;

.field final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mNonGameForegroundUids:Ljava/util/Set;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public final mSettings:Landroid/util/ArrayMap;

.field public final mSysProps:Lcom/android/server/app/GameManagerServiceSystemPropertiesWrapper;

.field final mUidObserver:Lcom/android/server/app/GameManagerService$MyUidObserver;

.field public final mUidObserverLock:Ljava/lang/Object;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$LCP_4kvy-EB-QxmT_kuk0Xyillc(Lcom/android/server/app/GameManagerService;ILjava/util/List;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->onPullAtom(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Sir-wtA0n6T1spL0WarCI-ChMjA(Landroid/content/pm/PackageInfo;)Z
    .locals 0

    .line 2014
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$Vw8LG-SrmMKQ0zSB9jhVgUNBUkg(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 0

    .line 2016
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic $r8$lambda$XK11PVBRPXwrQj1WwLFHGeixUJY(Lcom/android/server/app/GameManagerService;ILjava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->lambda$updateConfigsForUser$0(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$v0loNmftGWUMC3VLYZhDYOY54xM(I)[Ljava/lang/String;
    .locals 0

    .line 2017
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic $r8$lambda$xp9GXdoINU6fbuzy69VUqMrQlB0(I)[Ljava/lang/String;
    .locals 0

    .line 1889
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConfigs(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/app/GameManagerService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceConfigLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameForegroundUids:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGameStateListenerLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameStateListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGameStateListeners(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameStateListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNonGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mNonGameForegroundUids:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/app/GameManagerService;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerManagerInternal(Lcom/android/server/app/GameManagerService;)Landroid/os/PowerManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSysProps(Lcom/android/server/app/GameManagerService;)Lcom/android/server/app/GameManagerServiceSystemPropertiesWrapper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mSysProps:Lcom/android/server/app/GameManagerServiceSystemPropertiesWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidObserverLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mUidObserverLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetGameDefaultFrameRate(Lcom/android/server/app/GameManagerService;Z)F
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->getGameDefaultFrameRate(Z)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetGameModeFromSettingsUnchecked(Lcom/android/server/app/GameManagerService;Ljava/lang/String;I)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameModeFromSettingsUnchecked(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetInstalledGamePackageNames(Lcom/android/server/app/GameManagerService;I)[Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->getInstalledGamePackageNames(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misPackageGame(Lcom/android/server/app/GameManagerService;Ljava/lang/String;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->isPackageGame(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mpublishLocalService(Lcom/android/server/app/GameManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService;->publishLocalService()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterDeviceConfigListener(Lcom/android/server/app/GameManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService;->registerDeviceConfigListener()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterPackageReceiver(Lcom/android/server/app/GameManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService;->registerPackageReceiver()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterStatsCallbacks(Lcom/android/server/app/GameManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService;->registerStatsCallbacks()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveGameModeListenerUnchecked(Lcom/android/server/app/GameManagerService;Landroid/app/IGameModeListener;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->removeGameModeListenerUnchecked(Landroid/app/IGameModeListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveGameStateListenerUnchecked(Lcom/android/server/app/GameManagerService;Landroid/app/IGameStateListener;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->removeGameStateListenerUnchecked(Landroid/app/IGameStateListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendUserMessage(Lcom/android/server/app/GameManagerService;IILjava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IILjava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteGameModeInterventionsToFile(Lcom/android/server/app/GameManagerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->writeGameModeInterventionsToFile(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgameStateModeToStatsdGameState(I)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->gameStateModeToStatsdGameState(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smmodeToBitmask(I)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->modeToBitmask(I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 163
    invoke-static {}, Lcom/android/server/utils/LazyJniRegistrar;->registerGameManagerService()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 228
    invoke-static {}, Lcom/android/server/app/GameManagerService;->createServiceThread()Lcom/android/server/ServiceThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/app/GameManagerService;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    .line 232
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/android/server/app/GameManagerService$Injector;

    invoke-direct {v1}, Lcom/android/server/app/GameManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/app/GameManagerService;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/io/File;Lcom/android/server/app/GameManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/io/File;Lcom/android/server/app/GameManagerService$Injector;)V
    .locals 5

    .line 237
    invoke-static {p1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IGameManagerService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 167
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    .line 168
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    .line 169
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameModeListenerLock:Ljava/lang/Object;

    .line 170
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameStateListenerLock:Ljava/lang/Object;

    .line 179
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    .line 181
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    .line 184
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameModeListeners:Landroid/util/ArrayMap;

    .line 186
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameStateListeners:Landroid/util/ArrayMap;

    .line 190
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mUidObserverLock:Ljava/lang/Object;

    .line 194
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameForegroundUids:Ljava/util/Set;

    .line 196
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mNonGameForegroundUids:Ljava/util/Set;

    .line 238
    iput-object p1, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    .line 239
    new-instance v0, Lcom/android/server/app/GameManagerService$SettingsHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/app/GameManagerService$SettingsHandler;-><init>(Lcom/android/server/app/GameManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 241
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mUserManager:Landroid/os/UserManager;

    .line 242
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 243
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "system"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 245
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 v1, 0x1fd

    const/4 v2, -0x1

    invoke-static {p3, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 248
    new-instance p3, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v3, "game_mode_intervention.list"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p3, p0, Lcom/android/server/app/GameManagerService;->mGameModeInterventionListFile:Landroid/util/AtomicFile;

    .line 250
    invoke-virtual {p3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    const/16 v0, 0x1b0

    invoke-static {p3, v0, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 254
    const-string p3, "android.software.game_service"

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 255
    new-instance p3, Lcom/android/server/app/GameServiceController;

    .line 256
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v3, Lcom/android/server/app/GameServiceProviderSelectorImpl;

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Lcom/android/server/app/GameServiceProviderSelectorImpl;-><init>(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;)V

    new-instance p2, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;

    invoke-direct {p2, p1}, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p3, p1, v1, v3, p2}, Lcom/android/server/app/GameServiceController;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/server/app/GameServiceProviderSelector;Lcom/android/server/app/GameServiceProviderInstanceFactory;)V

    iput-object p3, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    goto :goto_0

    .line 260
    :cond_0
    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    .line 262
    :goto_0
    new-instance p1, Lcom/android/server/app/GameManagerService$MyUidObserver;

    invoke-direct {p1, p0}, Lcom/android/server/app/GameManagerService$MyUidObserver;-><init>(Lcom/android/server/app/GameManagerService;)V

    iput-object p1, p0, Lcom/android/server/app/GameManagerService;->mUidObserver:Lcom/android/server/app/GameManagerService$MyUidObserver;

    .line 264
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p2

    const/4 p3, 0x3

    invoke-interface {p2, p1, p3, v2, v0}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 268
    :catch_0
    const-string p1, "GameManagerService"

    const-string p2, "Could not register UidObserver"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_1
    invoke-virtual {p4}, Lcom/android/server/app/GameManagerService$Injector;->createSystemPropertiesWrapper()Lcom/android/server/app/GameManagerServiceSystemPropertiesWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/app/GameManagerService;->mSysProps:Lcom/android/server/app/GameManagerServiceSystemPropertiesWrapper;

    return-void
.end method

.method public static createServiceThread()Lcom/android/server/ServiceThread;
    .locals 4

    .line 2237
    new-instance v0, Lcom/android/server/ServiceThread;

    const/16 v1, 0xa

    const/4 v2, 0x1

    const-string v3, "GameManagerService"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 2239
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    return-object v0
.end method

.method public static gameModeToStatsdGameMode(I)I
    .locals 2

    .line 0
    const/4 v0, 0x1

    if-eqz p0, :cond_4

    const/4 v1, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x5

    return p0

    :cond_1
    return v1

    :cond_2
    return v0

    :cond_3
    return v1

    :cond_4
    return v0
.end method

.method public static gameModesToStatsdGameModes([I)[I
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2195
    :cond_0
    array-length v0, p0

    new-array v0, v0, [I

    .line 2197
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    .line 2198
    invoke-static {v4}, Lcom/android/server/app/GameManagerService;->gameModeToStatsdGameMode(I)I

    move-result v4

    aput v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static gameStateModeToStatsdGameState(I)I
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static modeToBitmask(I)I
    .locals 1

    .line 0
    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method

.method private static native nativeSetGameDefaultFrameRateOverride(IF)V
.end method

.method private static native nativeSetGameModeFrameRateOverride(IF)V
.end method


# virtual methods
.method public addGameModeListener(Landroid/app/IGameModeListener;)V
    .locals 3

    .line 1480
    const-string v0, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1482
    :try_start_0
    invoke-interface {p1}, Landroid/app/IGameModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1483
    new-instance v1, Lcom/android/server/app/GameManagerService$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/app/GameManagerService$1;-><init>(Lcom/android/server/app/GameManagerService;Landroid/app/IGameModeListener;Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1490
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameModeListenerLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1491
    :try_start_1
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameModeListeners:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 1494
    const-string p1, "GameManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to link death recipient for IGameModeListener from caller "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1496
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", abandoned its listener registration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1494
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public addGameStateListener(Landroid/app/IGameStateListener;)V
    .locals 3

    .line 1527
    :try_start_0
    invoke-interface {p1}, Landroid/app/IGameStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1528
    new-instance v1, Lcom/android/server/app/GameManagerService$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/app/GameManagerService$2;-><init>(Lcom/android/server/app/GameManagerService;Landroid/app/IGameStateListener;Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1534
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameStateListenerLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1535
    :try_start_1
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameStateListeners:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 1538
    const-string p1, "GameManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to link death recipient for IGameStateListener from caller "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1540
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", abandoned its listener registration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1538
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final bitFieldContainsModeBitmask(II)Z
    .locals 0

    .line 1678
    invoke-static {p2}, Lcom/android/server/app/GameManagerService;->modeToBitmask(I)I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final checkPermission(Ljava/lang/String;)V
    .locals 2

    .line 1030
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1032
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Access denied to process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", must have permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 283
    iget-object p1, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.DUMP"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 285
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Permission Denial: can\'t dump GameManagerService from from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " without permission "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 285
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p3, :cond_2

    .line 290
    array-length p1, p3

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 291
    :cond_2
    :goto_0
    const-string p1, "*Dump GameManagerService*"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0, p2}, Lcom/android/server/app/GameManagerService;->dumpAllGameConfigs(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final dumpAllGameConfigs(Ljava/io/PrintWriter;)V
    .locals 5

    .line 297
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 298
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->getInstalledGamePackageNames(I)[Ljava/lang/String;

    move-result-object v1

    .line 299
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 300
    invoke-virtual {p0, v4, v0}, Lcom/android/server/app/GameManagerService;->getInterventionList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getAllUserIds(I)[I
    .locals 4

    .line 2000
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    .line 2001
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2003
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    if-eq p1, p0, :cond_1

    .line 2006
    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public getAvailableGameModes(Ljava/lang/String;I)[I
    .locals 1

    .line 1063
    const-string v0, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1064
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->isPackageGame(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 1065
    new-array p0, p0, [I

    return-object p0

    .line 1067
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getAvailableGameModesUnchecked(Ljava/lang/String;I)[I

    move-result-object p0

    return-object p0
.end method

.method public final getAvailableGameModesUnchecked(Ljava/lang/String;I)[I
    .locals 0

    .line 1038
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getConfig(Ljava/lang/String;I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    const/4 p1, 0x4

    .line 1040
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0

    .line 1042
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModes()[I

    move-result-object p0

    return-object p0
.end method

.method public getConfig(Ljava/lang/String;I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    .locals 4

    .line 2037
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2038
    :try_start_0
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 2039
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2041
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2042
    :try_start_1
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2043
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerSettings;->getConfigOverrideLocked(Ljava/lang/String;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 p0, 0x0

    .line 2045
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 2049
    :cond_1
    invoke-virtual {v1, p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->copyAndApplyOverride(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    if-nez p0, :cond_3

    return-object v1

    :cond_3
    return-object p0

    .line 2045
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 2039
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final getGameDefaultFrameRate(Z)F
    .locals 0

    if-eqz p1, :cond_0

    .line 2257
    iget p0, p0, Lcom/android/server/app/GameManagerService;->mGameDefaultFrameRateValue:F

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getGameMode(Ljava/lang/String;I)I
    .locals 7

    .line 1091
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1092
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "getGameMode"

    const-string v6, "com.android.server.app.GameManagerService"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v2, p2

    .line 1091
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1096
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->isPackageGame(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1108
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->isValidPackageName(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1109
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameModeFromSettingsUnchecked(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 1113
    :cond_1
    const-string v0, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameModeFromSettingsUnchecked(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getGameModeFromSettingsUnchecked(Ljava/lang/String;I)I
    .locals 3

    .line 1072
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1073
    :try_start_0
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1074
    const-string p0, "GameManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User ID \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\' does not have a Game Mode selected for package: \'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 1076
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1079
    :cond_0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerSettings;->getGameModeLocked(Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    .line 1080
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getGameModeInfo(Ljava/lang/String;I)Landroid/app/GameModeInfo;
    .locals 7

    .line 1127
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1128
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "getGameModeInfo"

    const-string v6, "com.android.server.app.GameManagerService"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v2, p2

    .line 1127
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1132
    const-string v0, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1134
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->isPackageGame(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1138
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameModeFromSettingsUnchecked(Ljava/lang/String;I)I

    move-result v0

    .line 1139
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getConfig(Ljava/lang/String;I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1141
    invoke-virtual {v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getOverriddenGameModes()[I

    move-result-object p0

    .line 1142
    invoke-virtual {v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModes()[I

    move-result-object p1

    .line 1143
    new-instance p2, Landroid/app/GameModeInfo$Builder;

    invoke-direct {p2}, Landroid/app/GameModeInfo$Builder;-><init>()V

    .line 1144
    invoke-virtual {p2, v0}, Landroid/app/GameModeInfo$Builder;->setActiveGameMode(I)Landroid/app/GameModeInfo$Builder;

    move-result-object p2

    .line 1145
    invoke-virtual {p2, p1}, Landroid/app/GameModeInfo$Builder;->setAvailableGameModes([I)Landroid/app/GameModeInfo$Builder;

    move-result-object p2

    .line 1146
    invoke-virtual {p2, p0}, Landroid/app/GameModeInfo$Builder;->setOverriddenGameModes([I)Landroid/app/GameModeInfo$Builder;

    move-result-object p0

    invoke-static {v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->-$$Nest$fgetmAllowDownscale(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)Z

    move-result p2

    .line 1147
    invoke-virtual {p0, p2}, Landroid/app/GameModeInfo$Builder;->setDownscalingAllowed(Z)Landroid/app/GameModeInfo$Builder;

    move-result-object p0

    invoke-static {v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->-$$Nest$fgetmAllowFpsOverride(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)Z

    move-result p2

    .line 1148
    invoke-virtual {p0, p2}, Landroid/app/GameModeInfo$Builder;->setFpsOverrideAllowed(Z)Landroid/app/GameModeInfo$Builder;

    move-result-object p0

    .line 1149
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    aget v2, p1, v0

    .line 1150
    invoke-virtual {v1, v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->willGamePerformOptimizations(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1152
    invoke-virtual {v1, v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1155
    invoke-virtual {v3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->toPublicGameModeConfig()Landroid/app/GameModeConfiguration;

    move-result-object v3

    .line 1154
    invoke-virtual {p0, v2, v3}, Landroid/app/GameModeInfo$Builder;->setGameModeConfiguration(ILandroid/app/GameModeConfiguration;)Landroid/app/GameModeInfo$Builder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1159
    :cond_2
    invoke-virtual {p0}, Landroid/app/GameModeInfo$Builder;->build()Landroid/app/GameModeInfo;

    move-result-object p0

    return-object p0

    .line 1161
    :cond_3
    new-instance v1, Landroid/app/GameModeInfo$Builder;

    invoke-direct {v1}, Landroid/app/GameModeInfo$Builder;-><init>()V

    .line 1162
    invoke-virtual {v1, v0}, Landroid/app/GameModeInfo$Builder;->setActiveGameMode(I)Landroid/app/GameModeInfo$Builder;

    move-result-object v0

    .line 1163
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getAvailableGameModesUnchecked(Ljava/lang/String;I)[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/GameModeInfo$Builder;->setAvailableGameModes([I)Landroid/app/GameModeInfo$Builder;

    move-result-object p0

    .line 1164
    invoke-virtual {p0}, Landroid/app/GameModeInfo$Builder;->build()Landroid/app/GameModeInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getInstalledGamePackageNames(I)[Ljava/lang/String;
    .locals 1

    .line 2012
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    .line 2013
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    .line 2014
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda1;-><init>()V

    .line 2016
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda2;-><init>()V

    .line 2017
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final getInstalledGamePackageNamesByAllUsers(I)Ljava/util/List;
    .locals 4

    .line 2021
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2023
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->getAllUserIds(I)[I

    move-result-object p1

    .line 2024
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 2025
    invoke-virtual {p0, v3}, Lcom/android/server/app/GameManagerService;->getInstalledGamePackageNames(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2028
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public getInterventionList(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1868
    const-string v0, "android.permission.QUERY_ALL_PACKAGES"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1869
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getConfig(Ljava/lang/String;I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object p0

    .line 1870
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_0

    .line 1872
    const-string p0, "\n No intervention found for package "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1873
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1874
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1876
    :cond_0
    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1877
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1878
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLoadingBoostDuration(Ljava/lang/String;I)I
    .locals 2

    .line 1259
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, -0x1

    if-nez p2, :cond_0

    return v0

    .line 1264
    :cond_0
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1265
    :try_start_0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 1266
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    return v0

    .line 1271
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    .line 1275
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getLoadingBoostDuration()I

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    .line 1266
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getNewGameMode(ILcom/android/server/app/GameManagerService$GamePackageConfiguration;)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 1848
    invoke-static {p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->-$$Nest$mgetAvailableGameModesBitfield(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)I

    move-result p2

    const/4 v1, 0x0

    .line 1851
    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->modeToBitmask(I)I

    move-result v1

    not-int v1, v1

    and-int/2addr p2, v1

    .line 1852
    invoke-virtual {p0, p2, p1}, Lcom/android/server/app/GameManagerService;->bitFieldContainsModeBitmask(II)Z

    move-result p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    return p1

    :cond_1
    return v0
.end method

.method public getResolutionScalingFactor(Ljava/lang/String;II)F
    .locals 3

    .line 1378
    const-string v0, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1379
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1380
    :try_start_0
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1383
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1384
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/app/GameManagerService;->getResolutionScalingFactorInternal(Ljava/lang/String;II)F

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1381
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "User "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " wasn\'t started"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1383
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getResolutionScalingFactorInternal(Ljava/lang/String;II)F
    .locals 0

    .line 1388
    invoke-virtual {p0, p1, p3}, Lcom/android/server/app/GameManagerService;->getConfig(Ljava/lang/String;I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object p0

    const/high16 p1, -0x40800000    # -1.0f

    if-nez p0, :cond_0

    return p1

    .line 1393
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1395
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()F

    move-result p0

    return p0

    :cond_1
    return p1
.end method

.method public isAngleEnabled(Ljava/lang/String;I)Z
    .locals 2

    .line 1233
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1238
    :cond_0
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1239
    :try_start_0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    if-nez p0, :cond_1

    .line 1241
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1243
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1245
    invoke-virtual {p0, p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    .line 1249
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getUseAngle()Z

    move-result p0

    return p0

    .line 1243
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final isPackageGame(Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    .line 1047
    :try_start_0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x20000

    .line 1048
    invoke-virtual {p0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 1049
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->category:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public final isValidPackageName(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 1022
    :try_start_0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0

    .line 1023
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public final synthetic lambda$updateConfigsForUser$0(ILjava/lang/String;)Z
    .locals 0

    .line 1889
    invoke-virtual {p0, p2, p1}, Lcom/android/server/app/GameManagerService;->isPackageGame(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public notifyGraphicsEnvironmentSetup(Ljava/lang/String;I)V
    .locals 7

    .line 1285
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1286
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v5, "notifyGraphicsEnvironmentSetup"

    const-string v6, "com.android.server.app.GameManagerService"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v2, p2

    .line 1285
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1289
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->isValidPackageName(Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "GameManagerService"

    if-nez v0, :cond_0

    .line 1290
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No-op for attempt to notify graphics env setup for different packagethan caller with uid: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1290
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1295
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 1297
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No-op for attempt to notify graphics env setup for non-game app: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1301
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getLoadingBoostDuration(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_5

    const/16 p2, 0x1388

    if-eqz p1, :cond_2

    if-le p1, p2, :cond_3

    :cond_2
    move p1, p2

    .line 1306
    :cond_3
    iget-object p2, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1310
    iget-object p2, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1312
    :cond_4
    const-string p2, "Game loading power mode ON (loading boost on game start)"

    invoke-static {v1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    iget-object p2, p0, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 1316
    :goto_0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    .line 1317
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    int-to-long v0, p1

    .line 1316
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    return-void
.end method

.method public onBootCompleted()V
    .locals 5

    .line 1563
    const-string/jumbo v0, "onBootCompleted"

    const-string v1, "GameManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-eqz v0, :cond_0

    .line 1565
    invoke-virtual {v0}, Lcom/android/server/app/GameServiceController;->onBootComplete()V

    .line 1567
    :cond_0
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/app/GameManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/app/GameManagerService$3;-><init>(Lcom/android/server/app/GameManagerService;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1589
    const-string v0, "Game loading power mode OFF (game manager service start/restart)"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 1591
    const-string v0, "Game power mode OFF (game manager service start/restart)"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 1594
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mSysProps:Lcom/android/server/app/GameManagerServiceSystemPropertiesWrapper;

    const-string/jumbo v2, "ro.surface_flinger.game_default_frame_rate_override"

    const/16 v3, 0x3c

    invoke-interface {v0, v2, v3}, Lcom/android/server/app/GameManagerServiceSystemPropertiesWrapper;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/app/GameManagerService;->mGameDefaultFrameRateValue:F

    .line 1596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Game Default Frame Rate : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/app/GameManagerService;->mGameDefaultFrameRateValue:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onPullAtom(ILjava/util/List;)I
    .locals 13

    const/4 v0, 0x0

    const/16 v1, 0x27b6

    const/16 v2, 0x27b5

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x27b7

    if-ne p1, v1, :cond_6

    .line 2183
    iget-object p1, p0, Lcom/android/server/app/GameManagerService;->mGameModeListenerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2184
    :try_start_0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameModeListeners:Landroid/util/ArrayMap;

    .line 2185
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    .line 2184
    invoke-static {v1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2186
    monitor-exit p1

    goto/16 :goto_4

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 2147
    :cond_1
    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 2149
    iget-object v4, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2150
    :try_start_1
    iget-object v5, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 2151
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2152
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2153
    invoke-virtual {p0, v5, v3}, Lcom/android/server/app/GameManagerService;->getConfig(Ljava/lang/String;I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_1

    .line 2159
    :cond_3
    :try_start_2
    iget-object v7, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v5, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 2161
    :catch_0
    const-string v7, "GameManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot find UID for package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " under user handle id "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    :goto_2
    if-ne p1, v2, :cond_4

    .line 2167
    invoke-virtual {v6}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getOverriddenGameModes()[I

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/app/GameManagerService;->gameModesToStatsdGameModes([I)[I

    move-result-object v7

    .line 2168
    invoke-virtual {v6}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModes()[I

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/app/GameManagerService;->gameModesToStatsdGameModes([I)[I

    move-result-object v6

    .line 2166
    invoke-static {v2, v5, v7, v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II[I[I)Landroid/util/StatsEvent;

    move-result-object v5

    .line 2165
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-ne p1, v1, :cond_2

    .line 2170
    invoke-virtual {v6}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModes()[I

    move-result-object v7

    array-length v8, v7

    move v9, v0

    :goto_3
    if-ge v9, v8, :cond_2

    aget v10, v7, v9

    .line 2172
    invoke-virtual {v6, v10}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 2176
    invoke-static {v10}, Lcom/android/server/app/GameManagerService;->gameModeToStatsdGameMode(I)I

    move-result v10

    invoke-virtual {v11}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFps()I

    move-result v12

    .line 2177
    invoke-virtual {v11}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()F

    move-result v11

    .line 2174
    invoke-static {v1, v5, v10, v12, v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIF)Landroid/util/StatsEvent;

    move-result-object v10

    invoke-interface {p2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    return v0

    :catchall_1
    move-exception p0

    .line 2151
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 277
    new-instance v0, Lcom/android/server/app/GameManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v1}, Lcom/android/server/app/GameManagerShellCommand;-><init>(Landroid/content/pm/PackageManager;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;Ljava/io/File;)V
    .locals 4

    .line 1607
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    if-eqz p2, :cond_1

    .line 1609
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1610
    :try_start_0
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1611
    new-instance v2, Lcom/android/server/app/GameManagerSettings;

    invoke-direct {v2, p2}, Lcom/android/server/app/GameManagerSettings;-><init>(Ljava/io/File;)V

    .line 1613
    iget-object p2, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    invoke-virtual {v2}, Lcom/android/server/app/GameManagerSettings;->readPersistentDataLocked()Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1616
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1618
    :cond_1
    :goto_2
    const-string p2, "ON_USER_STARTING"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2, p2, v1}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IILjava/lang/String;I)V

    .line 1621
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-eqz p0, :cond_2

    .line 1622
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceController;->notifyUserStarted(Lcom/android/server/SystemService$TargetUser;)V

    :cond_2
    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 5

    .line 1633
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    .line 1635
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1636
    :try_start_0
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1637
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1639
    :cond_0
    const-string v2, "ON_USER_STOPPING"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {p0, v0, v4, v2, v3}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IILjava/lang/String;I)V

    .line 1640
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1642
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-eqz p0, :cond_1

    .line 1643
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceController;->notifyUserStopped(Lcom/android/server/SystemService$TargetUser;)V

    :cond_1
    return-void

    .line 1640
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    .line 1648
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 1652
    const-string v0, "ON_USER_SWITCHING"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IILjava/lang/String;I)V

    .line 1655
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-eqz p0, :cond_0

    .line 1656
    invoke-virtual {p0, p2}, Lcom/android/server/app/GameServiceController;->notifyNewForegroundUser(Lcom/android/server/SystemService$TargetUser;)V

    :cond_0
    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1627
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-eqz p0, :cond_0

    .line 1628
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceController;->notifyUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V

    :cond_0
    return-void
.end method

.method public final publishLocalService()V
    .locals 2

    .line 2116
    new-instance v0, Lcom/android/server/app/GameManagerService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/app/GameManagerService$LocalService;-><init>(Lcom/android/server/app/GameManagerService;Lcom/android/server/app/GameManagerService-IA;)V

    .line 2118
    const-class p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2119
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v1, 0x1

    .line 2120
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerCompatScaleProvider(ILcom/android/server/wm/CompatScaleProvider;)V

    .line 2122
    const-class p0, Landroid/app/GameManagerInternal;

    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public final registerDeviceConfigListener()V
    .locals 1

    .line 2112
    new-instance v0, Lcom/android/server/app/GameManagerService$DeviceConfigListener;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameManagerService$DeviceConfigListener;-><init>(Lcom/android/server/app/GameManagerService;)V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigListener:Lcom/android/server/app/GameManagerService$DeviceConfigListener;

    return-void
.end method

.method public final registerPackageReceiver()V
    .locals 3

    .line 2053
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2054
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2055
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2056
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2057
    new-instance v1, Lcom/android/server/app/GameManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/app/GameManagerService$4;-><init>(Lcom/android/server/app/GameManagerService;)V

    .line 2107
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v2}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final registerStatsCallbacks()V
    .locals 5

    .line 2126
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/StatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    .line 2127
    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/app/GameManagerService;)V

    const/16 v3, 0x27b5

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2132
    new-instance v2, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/app/GameManagerService;)V

    const/16 v3, 0x27b6

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2137
    new-instance v2, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/app/GameManagerService;)V

    const/16 p0, 0x27b7

    invoke-virtual {v0, p0, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public removeGameModeListener(Landroid/app/IGameModeListener;)V
    .locals 1

    .line 1511
    const-string v0, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1512
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->removeGameModeListenerUnchecked(Landroid/app/IGameModeListener;)V

    return-void
.end method

.method public final removeGameModeListenerUnchecked(Landroid/app/IGameModeListener;)V
    .locals 1

    .line 1516
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameModeListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1517
    :try_start_0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameModeListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeGameStateListener(Landroid/app/IGameStateListener;)V
    .locals 0

    .line 1549
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->removeGameStateListenerUnchecked(Landroid/app/IGameStateListener;)V

    return-void
.end method

.method public final removeGameStateListenerUnchecked(Landroid/app/IGameStateListener;)V
    .locals 1

    .line 1553
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameStateListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1554
    :try_start_0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameStateListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final resetFps(Ljava/lang/String;I)V
    .locals 1

    .line 1666
    :try_start_0
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x0

    .line 1667
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->setGameModeFrameRateOverride(IF)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public resetGameModeConfigOverride(Ljava/lang/String;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1805
    const-string v0, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1808
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1809
    :try_start_0
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1810
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1812
    :cond_0
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameManagerSettings;

    const/4 v2, -0x1

    if-eq p3, v2, :cond_3

    .line 1814
    invoke-virtual {v1, p1}, Lcom/android/server/app/GameManagerSettings;->getConfigOverrideLocked(Ljava/lang/String;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1817
    monitor-exit v0

    return-void

    .line 1819
    :cond_1
    invoke-static {v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->-$$Nest$mgetAvailableGameModesBitfield(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)I

    move-result v3

    .line 1820
    invoke-virtual {p0, v3, p3}, Lcom/android/server/app/GameManagerService;->bitFieldContainsModeBitmask(II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1821
    monitor-exit v0

    return-void

    .line 1823
    :cond_2
    invoke-virtual {v2, p3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->removeModeConfig(I)V

    .line 1824
    invoke-virtual {v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->hasActiveGameModeConfig()Z

    move-result p3

    if-nez p3, :cond_4

    .line 1825
    invoke-virtual {v1, p1}, Lcom/android/server/app/GameManagerSettings;->removeConfigOverrideLocked(Ljava/lang/String;)V

    goto :goto_0

    .line 1828
    :cond_3
    invoke-virtual {v1, p1}, Lcom/android/server/app/GameManagerSettings;->removeConfigOverrideLocked(Ljava/lang/String;)V

    .line 1830
    :cond_4
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1834
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result p3

    .line 1836
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getConfig(Ljava/lang/String;I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object v0

    .line 1837
    invoke-virtual {p0, p3, v0}, Lcom/android/server/app/GameManagerService;->getNewGameMode(ILcom/android/server/app/GameManagerService$GamePackageConfiguration;)I

    move-result v0

    if-eq p3, v0, :cond_5

    const/4 p3, 0x1

    .line 1839
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/app/GameManagerService;->setGameMode(Ljava/lang/String;II)V

    return-void

    .line 1842
    :cond_5
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/app/GameManagerService;->setGameMode(Ljava/lang/String;II)V

    return-void

    .line 1830
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final sendUserMessage(IILjava/lang/String;I)V
    .locals 2

    .line 1600
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1601
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    int-to-long v0, p4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1602
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to send user message "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GameManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setGameDefaultFrameRateOverride(IF)V
    .locals 1

    .line 2250
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setDefaultFrameRateOverride : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GameManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    invoke-static {p1, p2}, Lcom/android/server/app/GameManagerService;->nativeSetGameDefaultFrameRateOverride(IF)V

    return-void
.end method

.method public setGameMode(Ljava/lang/String;II)V
    .locals 9

    .line 1176
    const-string v0, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 1178
    const-string p0, "GameManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No-op for attempt to set UNSUPPORTED mode for app: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1180
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/app/GameManagerService;->isPackageGame(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1181
    const-string p0, "GameManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No-op for attempt to set game mode for non-game app: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1185
    :cond_1
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1186
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1187
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const-string/jumbo v7, "setGameMode"

    const-string v8, "com.android.server.app.GameManagerService"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v4, p3

    .line 1186
    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 1190
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1191
    const-string p0, "GameManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to set game mode for package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as user "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not started"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_3

    .line 1195
    :cond_2
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameManagerSettings;

    .line 1196
    invoke-virtual {v0, p1}, Lcom/android/server/app/GameManagerSettings;->getGameModeLocked(Ljava/lang/String;)I

    move-result v2

    .line 1197
    invoke-virtual {v0, p1, p2}, Lcom/android/server/app/GameManagerSettings;->setGameModeLocked(Ljava/lang/String;I)V

    .line 1198
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1199
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/app/GameManagerService;->updateInterventions(Ljava/lang/String;II)V

    .line 1200
    iget-object v3, p0, Lcom/android/server/app/GameManagerService;->mGameModeListenerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1201
    :try_start_1
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameModeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IGameModeListener;

    .line 1202
    invoke-interface {v1}, Landroid/app/IGameModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1204
    :try_start_2
    invoke-interface {v1, p1, v2, p2, p3}, Landroid/app/IGameModeListener;->onGameModeChanged(Ljava/lang/String;III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 1206
    :catch_0
    :try_start_3
    const-string v4, "GameManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot notify game mode change for listener added by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/app/GameManagerService;->mGameModeListeners:Landroid/util/ArrayMap;

    .line 1207
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1206
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1210
    :cond_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1211
    const-string v0, "SET_GAME_MODE"

    const/16 v1, 0x2710

    const/4 v3, 0x1

    invoke-virtual {p0, p3, v3, v0, v1}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IILjava/lang/String;I)V

    .line 1212
    const-string v0, "SET_GAME_MODE"

    const/4 v1, 0x0

    const/4 v3, 0x6

    invoke-virtual {p0, p3, v3, v0, v1}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IILjava/lang/String;I)V

    .line 1216
    :try_start_4
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1218
    :catch_1
    const-string p0, "GameManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find the UID for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " under user "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    .line 1221
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {v2}, Lcom/android/server/app/GameManagerService;->gameModeToStatsdGameMode(I)I

    move-result p3

    .line 1222
    invoke-static {p2}, Lcom/android/server/app/GameManagerService;->gameModeToStatsdGameMode(I)I

    move-result p2

    const/16 v0, 0x22b

    .line 1220
    invoke-static {v0, p0, p1, p3, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIII)V

    return-void

    .line 1210
    :goto_2
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    .line 1198
    :goto_3
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public setGameModeConfigOverride(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1735
    const-string v0, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1738
    :try_start_0
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v2, v0

    goto :goto_1

    .line 1740
    :catch_0
    const-string v0, "GameManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find the UID for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " under user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_0

    .line 1742
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->getConfig(Ljava/lang/String;I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1743
    invoke-virtual {v0, p3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1745
    invoke-virtual {v0, p3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v0

    .line 1747
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {p3}, Lcom/android/server/app/GameManagerService;->gameModeToStatsdGameMode(I)I

    move-result v4

    .line 1748
    invoke-virtual {v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()F

    move-result v5

    if-nez p5, :cond_0

    .line 1749
    invoke-virtual {v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()F

    move-result v1

    :goto_2
    move v6, v1

    goto :goto_3

    .line 1750
    :cond_0
    invoke-static {p5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_2

    .line 1751
    :goto_3
    invoke-virtual {v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFps()I

    move-result v7

    if-nez p4, :cond_1

    .line 1752
    invoke-virtual {v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFps()I

    move-result v0

    :goto_4
    move v8, v0

    goto :goto_5

    .line 1753
    :cond_1
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :goto_5
    const/16 v1, 0x22c

    .line 1746
    invoke-static/range {v1 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIFFII)V

    goto :goto_a

    .line 1756
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {p3}, Lcom/android/server/app/GameManagerService;->gameModeToStatsdGameMode(I)I

    move-result v4

    if-nez p5, :cond_3

    const/high16 v0, -0x40800000    # -1.0f

    :goto_6
    move v6, v0

    goto :goto_7

    .line 1759
    :cond_3
    invoke-static {p5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_6

    :goto_7
    if-nez p4, :cond_4

    const/4 v0, 0x0

    :goto_8
    move v8, v0

    goto :goto_9

    .line 1761
    :cond_4
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_8

    :goto_9
    const/16 v1, 0x22c

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v7, 0x0

    .line 1755
    invoke-static/range {v1 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIFFII)V

    .line 1766
    :goto_a
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1767
    :try_start_1
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1768
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_c

    .line 1770
    :cond_5
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameManagerSettings;

    .line 1772
    invoke-virtual {v0, p1}, Lcom/android/server/app/GameManagerSettings;->getConfigOverrideLocked(Ljava/lang/String;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object v2

    if-nez v2, :cond_6

    .line 1774
    new-instance v2, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    invoke-direct {v2, p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;-><init>(Ljava/lang/String;)V

    .line 1775
    invoke-virtual {v0, p1, v2}, Lcom/android/server/app/GameManagerSettings;->setConfigOverrideLocked(Ljava/lang/String;Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)V

    .line 1777
    :cond_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1780
    invoke-virtual {v2, p3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getOrAddDefaultGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v0

    if-eqz p4, :cond_7

    .line 1783
    invoke-virtual {v0, p4}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->setFpsStr(Ljava/lang/String;)V

    goto :goto_b

    .line 1785
    :cond_7
    const-string p4, ""

    invoke-virtual {v0, p4}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->setFpsStr(Ljava/lang/String;)V

    :goto_b
    if-eqz p5, :cond_8

    .line 1789
    invoke-static {p5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p4

    invoke-virtual {v0, p4}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->setScaling(F)V

    .line 1791
    :cond_8
    const-string p4, "GameManagerService"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package Name: "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " FPS: "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1792
    invoke-virtual {v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFps()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Scaling: "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1793
    invoke-virtual {v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()F

    move-result v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 1791
    invoke-static {p4, p5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/app/GameManagerService;->setGameMode(Ljava/lang/String;II)V

    return-void

    .line 1777
    :goto_c
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public setGameModeFrameRateOverride(IF)V
    .locals 0

    .line 2245
    invoke-static {p1, p2}, Lcom/android/server/app/GameManagerService;->nativeSetGameModeFrameRateOverride(IF)V

    return-void
.end method

.method public setGameServiceProvider(Ljava/lang/String;)V
    .locals 1

    .line 1331
    const-string v0, "android.permission.SET_GAME_SERVICE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1333
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameServiceController:Lcom/android/server/app/GameServiceController;

    if-nez p0, :cond_0

    return-void

    .line 1337
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceController;->setGameServiceProvider(Ljava/lang/String;)V

    return-void
.end method

.method public setGameState(Ljava/lang/String;Landroid/app/GameState;I)V
    .locals 3

    .line 487
    invoke-virtual {p0, p1, p3}, Lcom/android/server/app/GameManagerService;->isPackageGame(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No-op for attempt to set game state for non-game app: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GameManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 493
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 494
    const-string/jumbo v2, "packageName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string/jumbo p1, "userId"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 496
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 497
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 498
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public toggleGameDefaultFrameRate(Z)V
    .locals 2

    .line 2265
    invoke-virtual {p0}, Landroid/app/IGameManagerService$Stub;->toggleGameDefaultFrameRate_enforcePermission()V

    .line 2267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toggleGameDefaultFrameRate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->toggleGameDefaultFrameRateUnchecked(Z)V

    return-void
.end method

.method public final toggleGameDefaultFrameRateUnchecked(Z)V
    .locals 4

    .line 2276
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 2278
    :try_start_0
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSysProps:Lcom/android/server/app/GameManagerServiceSystemPropertiesWrapper;

    const-string v2, "debug.graphics.game_default_frame_rate.disabled"

    const-string v3, "false"

    invoke-interface {v1, v2, v3}, Lcom/android/server/app/GameManagerServiceSystemPropertiesWrapper;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 2281
    :cond_0
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mSysProps:Lcom/android/server/app/GameManagerServiceSystemPropertiesWrapper;

    const-string v2, "debug.graphics.game_default_frame_rate.disabled"

    const-string/jumbo v3, "true"

    invoke-interface {v1, v2, v3}, Lcom/android/server/app/GameManagerServiceSystemPropertiesWrapper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2284
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2287
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mUidObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2288
    :try_start_1
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mGameForegroundUids:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2289
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->getGameDefaultFrameRate(Z)F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/app/GameManagerService;->setGameDefaultFrameRateOverride(IF)V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 2291
    :cond_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 2284
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public varargs updateConfigsForUser(IZ[Ljava/lang/String;)V
    .locals 8

    if-eqz p2, :cond_0

    .line 1888
    invoke-static {p3}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0, p1}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/app/GameManagerService;I)V

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda4;

    invoke-direct {p3}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda4;-><init>()V

    .line 1889
    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, [Ljava/lang/String;

    .line 1892
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1893
    :try_start_1
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p3, v2

    .line 1894
    new-instance v4, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    iget-object v5, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v4, v5, v3, p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    .line 1896
    invoke-virtual {v4}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->isActive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1897
    const-string v5, "GameManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding config: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    iget-object v5, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    .line 1900
    :cond_1
    const-string v5, "GameManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inactive package config for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1901
    invoke-virtual {v4}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1900
    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    iget-object v4, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1905
    :cond_2
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1906
    :try_start_2
    iget-object p2, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1907
    :try_start_3
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1908
    monitor-exit p2

    return-void

    :catchall_1
    move-exception p0

    goto :goto_4

    .line 1910
    :cond_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1911
    :try_start_4
    array-length p2, p3

    move v0, v1

    :goto_2
    if-ge v0, p2, :cond_5

    aget-object v2, p3, v0

    .line 1912
    invoke-virtual {p0, v2, p1}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v3

    .line 1918
    iget-object v4, p0, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1919
    :try_start_5
    iget-object v5, p0, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 1920
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1921
    :try_start_6
    invoke-virtual {p0, v3, v5}, Lcom/android/server/app/GameManagerService;->getNewGameMode(ILcom/android/server/app/GameManagerService$GamePackageConfiguration;)I

    move-result v4

    if-eq v4, v3, :cond_4

    .line 1923
    invoke-virtual {p0, v2, v4, p1}, Lcom/android/server/app/GameManagerService;->setGameMode(Ljava/lang/String;II)V

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_6

    .line 1927
    :cond_4
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/app/GameManagerService;->updateInterventions(Ljava/lang/String;II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catchall_2
    move-exception p0

    .line 1920
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p0

    .line 1930
    :cond_5
    const-string p2, "UPDATE_CONFIGS_FOR_USERS"

    const/4 p3, 0x6

    invoke-virtual {p0, p1, p3, p2, v1}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IILjava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    return-void

    .line 1910
    :goto_4
    :try_start_9
    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 1905
    :goto_5
    :try_start_b
    monitor-exit p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 1933
    :goto_6
    const-string p2, "GameManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to update configs for user "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateCustomGameModeConfiguration(Ljava/lang/String;Landroid/app/GameModeConfiguration;I)V
    .locals 10

    .line 1413
    const-string v0, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1414
    invoke-virtual {p0, p1, p3}, Lcom/android/server/app/GameManagerService;->isPackageGame(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1415
    const-string p0, "GameManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No-op for attempt to update custom game mode for non-game app: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1419
    :cond_0
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1420
    :try_start_0
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1423
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1427
    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1428
    :try_start_1
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1429
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    .line 1431
    :cond_1
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameManagerSettings;

    .line 1433
    invoke-virtual {v0, p1}, Lcom/android/server/app/GameManagerSettings;->getConfigOverrideLocked(Ljava/lang/String;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1435
    new-instance v1, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    invoke-direct {v1, p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;-><init>(Ljava/lang/String;)V

    .line 1436
    invoke-virtual {v0, p1, v1}, Lcom/android/server/app/GameManagerSettings;->setConfigOverrideLocked(Ljava/lang/String;Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)V

    .line 1438
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x4

    .line 1440
    invoke-virtual {v1, v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getOrAddDefaultGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v1

    .line 1441
    invoke-virtual {v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()F

    move-result v6

    .line 1442
    invoke-virtual {v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFps()I

    move-result v8

    .line 1443
    invoke-virtual {v1, p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->updateFromPublicGameModeConfig(Landroid/app/GameModeConfiguration;)V

    const/4 v2, 0x1

    .line 1445
    const-string v3, "UPDATE_CUSTOM_GAME_MODE_CONFIG"

    const/16 v4, 0x2710

    invoke-virtual {p0, p3, v2, v3, v4}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IILjava/lang/String;I)V

    const/4 v2, 0x6

    .line 1447
    const-string v3, "UPDATE_CUSTOM_GAME_MODE_CONFIG"

    invoke-virtual {p0, p3, v2, v3, v4}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IILjava/lang/String;I)V

    .line 1450
    invoke-virtual {p0, p1, p3}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 1452
    invoke-virtual {p0, p1, v2, p3}, Lcom/android/server/app/GameManagerService;->updateInterventions(Ljava/lang/String;II)V

    .line 1454
    :cond_3
    const-string v2, "GameManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated custom game mode config for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with FPS="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1455
    invoke-virtual {v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFps()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";Scaling="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    invoke-virtual {v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()F

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " under user "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1454
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    :try_start_2
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    move v3, p0

    goto :goto_1

    .line 1462
    :catch_0
    const-string p0, "GameManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find the UID for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " under user "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    goto :goto_0

    .line 1465
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->gameModeToStatsdGameMode(I)I

    move-result v5

    .line 1466
    invoke-virtual {p2}, Landroid/app/GameModeConfiguration;->getScalingFactor()F

    move-result v7

    .line 1467
    invoke-virtual {p2}, Landroid/app/GameModeConfiguration;->getFpsOverride()I

    move-result v9

    const/16 v2, 0x22c

    .line 1464
    invoke-static/range {v2 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIFFII)V

    return-void

    .line 1438
    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 1421
    :cond_4
    :try_start_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "User "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " wasn\'t started"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1423
    :goto_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final updateFps(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;Ljava/lang/String;II)V
    .locals 0

    .line 1691
    invoke-virtual {p1, p3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1693
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Game mode "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GameManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1697
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFps()I

    move-result p1

    int-to-float p1, p1

    .line 1698
    iget-object p3, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p3, p2, p4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p2

    .line 1699
    invoke-virtual {p0, p2, p1}, Lcom/android/server/app/GameManagerService;->setGameModeFrameRateOverride(IF)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final updateInterventions(Ljava/lang/String;II)V
    .locals 2

    .line 1708
    invoke-virtual {p0, p1, p3}, Lcom/android/server/app/GameManagerService;->getConfig(Ljava/lang/String;I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 1711
    invoke-virtual {v0, p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->willGamePerformOptimizations(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1712
    invoke-virtual {v0, p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1722
    :cond_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/app/GameManagerService;->updateFps(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;Ljava/lang/String;II)V

    goto :goto_1

    .line 1713
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/app/GameManagerService;->resetFps(Ljava/lang/String;I)V

    if-nez v0, :cond_2

    .line 1718
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package configuration not found for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GameManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1724
    :cond_2
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->updateUseAngle(Ljava/lang/String;I)V

    return-void
.end method

.method public updateResolutionScalingFactor(Ljava/lang/String;IFI)V
    .locals 8

    .line 1355
    const-string v0, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1356
    iget-object v1, p0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1357
    :try_start_0
    iget-object v0, p0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1360
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    .line 1362
    invoke-static {p3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move v4, p4

    .line 1361
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/app/GameManagerService;->setGameModeConfigOverride(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    move v4, p4

    .line 1358
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "User "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " wasn\'t started"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1360
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final updateUseAngle(Ljava/lang/String;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public final writeGameModeInterventionsToFile(I)V
    .locals 13

    .line 1946
    const-string v0, ","

    const-string v1, "\t"

    const/4 v2, 0x0

    .line 1949
    :try_start_0
    iget-object v3, p0, Lcom/android/server/app/GameManagerService;->mGameModeInterventionListFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1950
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    .line 1951
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1953
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1954
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->getInstalledGamePackageNamesByAllUsers(I)Ljava/util/List;

    move-result-object v5

    .line 1955
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1956
    invoke-virtual {p0, v6, p1}, Lcom/android/server/app/GameManagerService;->getConfig(Ljava/lang/String;I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_0

    .line 1960
    :cond_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1961
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1962
    iget-object v8, p0, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v6, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1963
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1964
    invoke-virtual {p0, v6, p1}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1965
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1966
    invoke-virtual {v7}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModes()[I

    move-result-object v6

    .line 1967
    array-length v8, v6

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_2

    aget v10, v6, v9

    .line 1969
    invoke-virtual {v7, v10}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v11

    if-nez v11, :cond_1

    goto :goto_2

    .line 1973
    :cond_1
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1974
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1975
    invoke-virtual {v11}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getUseAngle()Z

    move-result v10

    .line 1976
    const-string v12, "angle=%d"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1977
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1978
    invoke-virtual {v11}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()F

    move-result v10

    .line 1979
    const-string/jumbo v12, "scaling="

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1980
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1981
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1982
    invoke-virtual {v11}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFps()I

    move-result v10

    .line 1983
    const-string v11, "fps=%d"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1984
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    .line 1986
    :cond_2
    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1988
    :cond_3
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1989
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 1990
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1991
    iget-object p1, p0, Lcom/android/server/app/GameManagerService;->mGameModeInterventionListFile:Landroid/util/AtomicFile;

    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1993
    :goto_3
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameModeInterventionListFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1994
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to write game_mode_intervention.list, exception "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GameManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
