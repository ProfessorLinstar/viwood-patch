.class public final Lcom/android/server/pinner/PinnerService;
.super Lcom/android/server/SystemService;
.source "PinnerService.java"


# static fields
.field public static final DEFAULT_ANON_SIZE:J

.field public static final PAGE_SIZE:I

.field public static PROP_PIN_PINLIST:Z


# instance fields
.field public final mAm:Landroid/app/IActivityManager;

.field public final mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mBinderService:Lcom/android/server/pinner/PinnerService$BinderService;

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mConfiguredAssistantPinBytes:I

.field public final mConfiguredCameraPinBytes:I

.field public final mConfiguredHomePinBytes:I

.field public mConfiguredMaxPinnedMemory:J

.field public final mConfiguredMaxPinnedMemoryPercentage:I

.field public final mConfiguredToPinAssistant:Z

.field public final mConfiguredToPinCamera:Z

.field public final mConfiguredWebviewPinBytes:I

.field public final mContext:Landroid/content/Context;

.field public mCurrentPinnedMemory:J

.field public mCurrentlyPinnedAnonSize:J

.field public final mDeviceConfigAnonSizeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field public final mDeviceConfigInterface:Landroid/provider/DeviceConfigInterface;

.field public final mInjector:Lcom/android/server/pinner/PinnerService$Injector;

.field public final mPendingRepin:Landroid/util/ArrayMap;

.field public mPinAnonAddress:J

.field public mPinAnonSize:J

.field public mPinKeys:Landroid/util/ArraySet;

.field public final mPinnedApps:Landroid/util/ArrayMap;

.field public final mPinnedFiles:Landroid/util/ArrayMap;

.field public mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$2PfQLctqG4Okc7wNRRai0fQs5fU(Lcom/android/server/pinner/PinnerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->pinApps(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$52c9PjbzKP2HiaB_g7_gqvFiyJA(Lcom/android/server/pinner/PinnerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->pinAppsWithUpdatedKeys(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5NlcqPFWoiYpj9p2T8d2xF4yH8M(Lcom/android/server/pinner/PinnerService;IIZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pinner/PinnerService;->pinApp(IIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$R6x7amq8T_0MOzvlOxQEMhh7D0U(Lcom/android/server/pinner/PinnerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->unpinApps()V

    return-void
.end method

.method public static synthetic $r8$lambda$vknxfPtf9El4XwvHudFnd4mofSM(Ljava/lang/String;Lcom/android/server/pinner/PinnedFile;)Z
    .locals 0

    .line 1225
    iget-object p1, p1, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAmInternal(Lcom/android/server/pinner/PinnerService;)Landroid/app/ActivityManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pinner/PinnerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConfiguredAssistantPinBytes(Lcom/android/server/pinner/PinnerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredAssistantPinBytes:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConfiguredCameraPinBytes(Lcom/android/server/pinner/PinnerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredCameraPinBytes:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConfiguredHomePinBytes(Lcom/android/server/pinner/PinnerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredHomePinBytes:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConfiguredMaxPinnedMemory(Lcom/android/server/pinner/PinnerService;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredMaxPinnedMemory:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmConfiguredMaxPinnedMemoryPercentage(Lcom/android/server/pinner/PinnerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredMaxPinnedMemoryPercentage:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/pinner/PinnerService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pinner/PinnerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentlyPinnedAnonSize(Lcom/android/server/pinner/PinnerService;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingRepin(Lcom/android/server/pinner/PinnerService;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pinner/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPinAnonAddress(Lcom/android/server/pinner/PinnerService;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/pinner/PinnerService;->mPinAnonAddress:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmPinnedApps(Lcom/android/server/pinner/PinnerService;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPinnedFiles(Lcom/android/server/pinner/PinnerService;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPinnerHandler(Lcom/android/server/pinner/PinnerService;)Lcom/android/server/pinner/PinnerService$PinnerHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetAllPinsForGroup(Lcom/android/server/pinner/PinnerService;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->getAllPinsForGroup(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetAvailableGlobalQuota(Lcom/android/server/pinner/PinnerService;)J
    .locals 2

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->getAvailableGlobalQuota()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mgetNameForKey(Lcom/android/server/pinner/PinnerService;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->getNameForKey(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandlePinOnStart(Lcom/android/server/pinner/PinnerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->handlePinOnStart()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUidActive(Lcom/android/server/pinner/PinnerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->handleUidActive(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUidGone(Lcom/android/server/pinner/PinnerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->handleUidGone(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpinFileInternal(Lcom/android/server/pinner/PinnerService;Ljava/lang/String;JZ)Lcom/android/server/pinner/PinnedFile;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pinner/PinnerService;->pinFileInternal(Ljava/lang/String;JZ)Lcom/android/server/pinner/PinnedFile;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mrefreshPinAnonConfig(Lcom/android/server/pinner/PinnerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->refreshPinAnonConfig()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendPinAppMessage(Lcom/android/server/pinner/PinnerService;IIZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pinner/PinnerService;->sendPinAppMessage(IIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendPinAppsWithUpdatedKeysMessage(Lcom/android/server/pinner/PinnerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->sendPinAppsWithUpdatedKeysMessage(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendUnpinAppsMessage(Lcom/android/server/pinner/PinnerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->sendUnpinAppsMessage()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 112
    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/pinner/PinnerService;->PAGE_SIZE:I

    .line 121
    const-string/jumbo v0, "pinner.use_pinlist"

    const/4 v1, 0x1

    .line 122
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pinner/PinnerService;->PROP_PIN_PINLIST:Z

    .line 170
    const-string/jumbo v0, "pinner.pin_shared_anon_size"

    const-wide/16 v1, 0x0

    .line 171
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pinner/PinnerService;->DEFAULT_ANON_SIZE:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 240
    new-instance v0, Lcom/android/server/pinner/PinnerService$Injector;

    invoke-direct {v0}, Lcom/android/server/pinner/PinnerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/pinner/PinnerService;-><init>(Landroid/content/Context;Lcom/android/server/pinner/PinnerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pinner/PinnerService$Injector;)V
    .locals 4

    .line 245
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 141
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    .line 145
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    .line 156
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    const-wide/16 v0, 0x0

    .line 192
    iput-wide v0, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    .line 197
    new-instance v0, Lcom/android/server/pinner/PinnerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/pinner/PinnerService$1;-><init>(Lcom/android/server/pinner/PinnerService;)V

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 211
    new-instance v1, Lcom/android/server/pinner/PinnerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/pinner/PinnerService$2;-><init>(Lcom/android/server/pinner/PinnerService;)V

    iput-object v1, p0, Lcom/android/server/pinner/PinnerService;->mDeviceConfigAnonSizeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 247
    iput-object p1, p0, Lcom/android/server/pinner/PinnerService;->mContext:Landroid/content/Context;

    .line 248
    iput-object p2, p0, Lcom/android/server/pinner/PinnerService;->mInjector:Lcom/android/server/pinner/PinnerService$Injector;

    .line 249
    invoke-virtual {p2}, Lcom/android/server/pinner/PinnerService$Injector;->getDeviceConfigInterface()Landroid/provider/DeviceConfigInterface;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pinner/PinnerService;->mDeviceConfigInterface:Landroid/provider/DeviceConfigInterface;

    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111020e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredToPinCamera:Z

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0104

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredCameraPinBytes:I

    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0103

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredAssistantPinBytes:I

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0105

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredHomePinBytes:I

    .line 258
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111020d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredToPinAssistant:Z

    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0107

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredWebviewPinBytes:I

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0106

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredMaxPinnedMemoryPercentage:I

    .line 265
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->createPinKeys()Landroid/util/ArraySet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pinner/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    .line 266
    new-instance v2, Lcom/android/server/pinner/PinnerService$PinnerHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/pinner/PinnerService$PinnerHandler;-><init>(Lcom/android/server/pinner/PinnerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    .line 268
    const-class v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v2, p0, Lcom/android/server/pinner/PinnerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 269
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    iput-object v2, p0, Lcom/android/server/pinner/PinnerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 270
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pinner/PinnerService;->mAm:Landroid/app/IActivityManager;

    .line 272
    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/pinner/PinnerService;->mUserManager:Landroid/os/UserManager;

    .line 274
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 275
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->registerUidListener()V

    .line 280
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->registerUserSetupCompleteListener()V

    .line 282
    new-instance p1, Landroid/os/HandlerExecutor;

    iget-object p0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    invoke-direct {p1, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p0, "runtime_native"

    invoke-interface {p2, p0, p1, v1}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/pinner/PinnerService;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public static maybeOpenPinMetaInZip(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    .line 1105
    sget-boolean v0, Lcom/android/server/pinner/PinnerService;->PROP_PIN_PINLIST:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1114
    :cond_0
    const-string/jumbo v0, "pinlist.meta"

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1121
    const-string v0, "assets/pinlist.meta"

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 1125
    :cond_1
    const-string v2, "PinnerService"

    if-eqz v0, :cond_2

    .line 1130
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1132
    const-string v0, "error reading pin metadata \"%s\": pinning as blob"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1133
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1132
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1138
    :cond_2
    const-string p0, "Could not find pinlist.meta for \"%s\": pinning as blob"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1139
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1138
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method

.method public static maybeOpenZip(Ljava/lang/String;)Ljava/util/zip/ZipFile;
    .locals 2

    .line 1090
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1092
    const-string v1, "could not open \"%s\" as zip: pinning as blob"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "PinnerService"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static pinFileRanges(Ljava/lang/String;JLcom/android/server/pinner/PinRangeSource;)Lcom/android/server/pinner/PinnedFile;
    .locals 30

    move-object/from16 v5, p0

    .line 1156
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    const-wide/16 v2, -0x1

    const-wide/16 v8, 0x0

    .line 1161
    :try_start_0
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    sget v4, Landroid/system/OsConstants;->O_CLOEXEC:I

    or-int/2addr v0, v4

    const/4 v4, 0x0

    .line 1162
    invoke-static {v5, v0, v4}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v16
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 1163
    :try_start_1
    invoke-static/range {v16 .. v16}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    iget-wide v0, v0, Landroid/system/StructStat;->st_size:J

    const-wide/32 v6, 0x7fffffff

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    long-to-int v0, v0

    int-to-long v12, v0

    .line 1164
    :try_start_2
    sget v14, Landroid/system/OsConstants;->PROT_READ:I

    sget v15, Landroid/system/OsConstants;->MAP_SHARED:I

    const-wide/16 v17, 0x0

    const-wide/16 v10, 0x0

    invoke-static/range {v10 .. v18}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v1
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 1167
    :try_start_3
    new-instance v0, Lcom/android/server/pinner/PinnerService$PinRange;

    invoke-direct {v0}, Lcom/android/server/pinner/PinnerService$PinRange;-><init>()V

    .line 1171
    sget v3, Lcom/android/server/pinner/PinnerService;->PAGE_SIZE:I

    int-to-long v6, v3

    rem-long v6, p1, v6
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    cmp-long v4, v6, v8

    if-eqz v4, :cond_0

    int-to-long v3, v3

    .line 1172
    :try_start_4
    rem-long v3, p1, v3
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-long v3, p1, v3

    :goto_0
    move-wide v6, v8

    goto :goto_5

    :catchall_0
    move-exception v0

    move-wide v2, v1

    :goto_1
    move-wide/from16 v23, v8

    :goto_2
    move-object/from16 v1, v16

    goto/16 :goto_e

    :catch_0
    move-exception v0

    move-wide v2, v1

    :goto_3
    move-wide/from16 v23, v8

    :goto_4
    move-object/from16 v1, v16

    goto/16 :goto_d

    :cond_0
    move-wide/from16 v3, p1

    goto :goto_0

    :goto_5
    cmp-long v10, v6, v3

    if-gez v10, :cond_3

    move-object/from16 v10, p3

    .line 1175
    :try_start_5
    invoke-virtual {v10, v0}, Lcom/android/server/pinner/PinRangeSource;->read(Lcom/android/server/pinner/PinnerService$PinRange;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1176
    iget v11, v0, Lcom/android/server/pinner/PinnerService$PinRange;->start:I

    int-to-long v14, v11

    .line 1177
    iget v11, v0, Lcom/android/server/pinner/PinnerService$PinRange;->length:I
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-wide/from16 v23, v8

    int-to-long v8, v11

    const-wide/16 v10, 0x0

    move-wide/from16 v28, v14

    move-wide v14, v12

    move-wide/from16 v12, v28

    .line 1178
    :try_start_6
    invoke-static/range {v10 .. v15}, Lcom/android/server/pinner/PinnerUtils;->clamp(JJJ)J

    move-result-wide v10
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-wide v12, v14

    const-wide/16 v17, 0x0

    sub-long v21, v12, v10

    move-wide/from16 v19, v8

    .line 1179
    :try_start_7
    invoke-static/range {v17 .. v22}, Lcom/android/server/pinner/PinnerUtils;->clamp(JJJ)J

    move-result-wide v8

    sub-long v14, v3, v6

    .line 1180
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    move-object/from16 v25, v0

    .line 1189
    sget v0, Lcom/android/server/pinner/PinnerService;->PAGE_SIZE:I
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-wide/from16 v26, v1

    int-to-long v1, v0

    :try_start_8
    rem-long v1, v10, v1

    add-long/2addr v8, v1

    int-to-long v1, v0

    .line 1190
    rem-long v1, v10, v1

    sub-long/2addr v10, v1

    int-to-long v1, v0

    .line 1191
    rem-long v1, v8, v1

    cmp-long v1, v1, v23

    if-eqz v1, :cond_1

    int-to-long v1, v0

    move-wide/from16 v17, v1

    int-to-long v0, v0

    .line 1192
    rem-long v0, v8, v0

    sub-long v1, v17, v0

    add-long/2addr v8, v1

    :cond_1
    move-wide/from16 v19, v8

    goto :goto_8

    :catchall_1
    move-exception v0

    :goto_6
    move-object/from16 v1, v16

    move-wide/from16 v2, v26

    goto/16 :goto_e

    :catch_1
    move-exception v0

    :goto_7
    move-object/from16 v1, v16

    move-wide/from16 v2, v26

    goto/16 :goto_d

    :goto_8
    const-wide/16 v17, 0x0

    move-wide/from16 v21, v14

    .line 1194
    invoke-static/range {v17 .. v22}, Lcom/android/server/pinner/PinnerUtils;->clamp(JJJ)J

    move-result-wide v0

    cmp-long v2, v0, v23

    if-lez v2, :cond_2

    add-long v8, v26, v10

    .line 1202
    invoke-static {v8, v9, v0, v1}, Landroid/system/Os;->mlock(JJ)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_2
    add-long/2addr v6, v0

    move-wide/from16 v8, v23

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    goto :goto_5

    :catchall_2
    move-exception v0

    move-wide/from16 v26, v1

    goto :goto_6

    :catch_2
    move-exception v0

    move-wide/from16 v26, v1

    goto :goto_7

    :catchall_3
    move-exception v0

    move-wide/from16 v26, v1

    move-wide v12, v14

    goto :goto_6

    :catch_3
    move-exception v0

    move-wide/from16 v26, v1

    move-wide v12, v14

    goto :goto_7

    :catchall_4
    move-exception v0

    move-wide/from16 v26, v1

    move-wide/from16 v23, v8

    goto :goto_6

    :catch_4
    move-exception v0

    move-wide/from16 v26, v1

    move-wide/from16 v23, v8

    goto :goto_7

    :cond_3
    move-wide/from16 v26, v1

    move-wide/from16 v23, v8

    .line 1207
    :try_start_9
    new-instance v0, Lcom/android/server/pinner/PinnedFile;
    :try_end_9
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move-wide v3, v12

    move-wide/from16 v1, v26

    :try_start_a
    invoke-direct/range {v0 .. v7}, Lcom/android/server/pinner/PinnedFile;-><init>(JJLjava/lang/String;J)V
    :try_end_a
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1214
    invoke-static/range {v16 .. v16}, Lcom/android/server/pinner/PinnerUtils;->safeClose(Ljava/io/FileDescriptor;)V

    return-object v0

    :catchall_5
    move-exception v0

    move-wide v12, v3

    :goto_9
    move-wide v2, v1

    goto/16 :goto_2

    :catch_5
    move-exception v0

    move-wide v12, v3

    :goto_a
    move-wide v2, v1

    goto/16 :goto_4

    :catchall_6
    move-exception v0

    move-wide/from16 v1, v26

    goto :goto_9

    :catch_6
    move-exception v0

    move-wide/from16 v1, v26

    goto :goto_a

    :catchall_7
    move-exception v0

    move-wide/from16 v23, v8

    goto :goto_9

    :catch_7
    move-exception v0

    move-wide/from16 v23, v8

    goto :goto_a

    :catchall_8
    move-exception v0

    goto/16 :goto_1

    :catch_8
    move-exception v0

    goto/16 :goto_3

    :catchall_9
    move-exception v0

    move-wide/from16 v23, v8

    move-object/from16 v1, v16

    :goto_b
    move-wide/from16 v12, v23

    goto :goto_e

    :catch_9
    move-exception v0

    move-wide/from16 v23, v8

    move-object/from16 v1, v16

    :goto_c
    move-wide/from16 v12, v23

    goto :goto_d

    :catchall_a
    move-exception v0

    move-wide/from16 v23, v8

    goto :goto_b

    :catch_a
    move-exception v0

    move-wide/from16 v23, v8

    goto :goto_c

    .line 1211
    :goto_d
    :try_start_b
    const-string v4, "PinnerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not pin file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 1214
    invoke-static {v1}, Lcom/android/server/pinner/PinnerUtils;->safeClose(Ljava/io/FileDescriptor;)V

    cmp-long v0, v2, v23

    if-ltz v0, :cond_4

    .line 1216
    invoke-static {v2, v3, v12, v13}, Lcom/android/server/pinner/PinnerUtils;->safeMunmap(JJ)V

    :cond_4
    const/4 v0, 0x0

    return-object v0

    :catchall_b
    move-exception v0

    .line 1214
    :goto_e
    invoke-static {v1}, Lcom/android/server/pinner/PinnerUtils;->safeClose(Ljava/io/FileDescriptor;)V

    cmp-long v1, v2, v23

    if-ltz v1, :cond_5

    .line 1216
    invoke-static {v2, v3, v12, v13}, Lcom/android/server/pinner/PinnerUtils;->safeMunmap(JJ)V

    .line 1218
    :cond_5
    throw v0
.end method


# virtual methods
.method public final createPinKeys()Landroid/util/ArraySet;
    .locals 6

    .line 592
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 595
    iget-boolean v1, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredToPinCamera:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mDeviceConfigInterface:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v3, "pinner.pin_camera"

    .line 597
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 596
    const-string/jumbo v4, "runtime_native_boot"

    const-string/jumbo v5, "pin_camera"

    invoke-interface {v1, v4, v5, v3}, Landroid/provider/DeviceConfigInterface;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 599
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 604
    :cond_0
    iget v1, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredHomePinBytes:I

    if-lez v1, :cond_1

    .line 605
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 607
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredToPinAssistant:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    .line 608
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public dumpDataForStatsd()Ljava/util/List;
    .locals 9

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    monitor-enter p0

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pinner/PinnedFile;

    .line 349
    new-instance v3, Lcom/android/server/pinner/PinnerService$PinnedFileStats;

    const/16 v4, 0x3e8

    invoke-direct {v3, v4, v2}, Lcom/android/server/pinner/PinnerService$PinnedFileStats;-><init>(ILcom/android/server/pinner/PinnedFile;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 353
    iget-object v3, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pinner/PinnerService$PinnedApp;

    .line 354
    iget-object v4, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pinner/PinnerService$PinnedApp;

    iget-object v2, v2, Lcom/android/server/pinner/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/server/pinner/PinnedFile;

    .line 355
    new-instance v7, Lcom/android/server/pinner/PinnerService$PinnedFileStats;

    iget v8, v3, Lcom/android/server/pinner/PinnerService$PinnedApp;->uid:I

    invoke-direct {v7, v8, v6}, Lcom/android/server/pinner/PinnerService$PinnedFileStats;-><init>(ILcom/android/server/pinner/PinnedFile;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 358
    :cond_2
    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getAllPinsForGroup(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1222
    monitor-enter p0

    .line 1223
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1224
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    .line 1225
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 1226
    invoke-interface {p1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p1

    .line 1227
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 543
    :cond_0
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mContext:Landroid/content/Context;

    .line 544
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0xd0000

    invoke-virtual {v1, p1, v2, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 554
    :cond_1
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v3}, Lcom/android/server/pinner/PinnerService;->isResolverActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 555
    iget-object p0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0

    :cond_2
    if-eqz p3, :cond_6

    .line 559
    iget-object p0, p0, Lcom/android/server/pinner/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 562
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object p1, v0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 563
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_3

    if-nez p1, :cond_4

    move-object p1, p2

    goto :goto_0

    :cond_4
    return-object v0

    :cond_5
    return-object p1

    :cond_6
    return-object v0
.end method

.method public final getAssistantInfo(I)Landroid/content/pm/ApplicationInfo;
    .locals 2

    .line 533
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 534
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pinner/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getAvailableGlobalQuota()J
    .locals 4

    .line 833
    iget-wide v0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredMaxPinnedMemory:J

    iget-wide v2, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final getCameraInfo(I)Landroid/content/pm/ApplicationInfo;
    .locals 4

    .line 502
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 503
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/pinner/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 512
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/pinner/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 520
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 521
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pinner/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final getHomeInfo(I)Landroid/content/pm/ApplicationInfo;
    .locals 2

    .line 528
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 529
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pinner/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getInfoForKey(II)Landroid/content/pm/ApplicationInfo;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 710
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/pinner/PinnerService;->getAssistantInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0

    .line 708
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/pinner/PinnerService;->getHomeInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0

    .line 706
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/pinner/PinnerService;->getCameraInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getNameForKey(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    .line 728
    const-string p0, ""

    return-object p0

    .line 726
    :cond_0
    const-string p0, "Assistant"

    return-object p0

    .line 724
    :cond_1
    const-string p0, "Home"

    return-object p0

    .line 722
    :cond_2
    const-string p0, "Camera"

    return-object p0
.end method

.method public final declared-synchronized getPinKeys()Landroid/util/ArraySet;
    .locals 1

    monitor-enter p0

    .line 615
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinKeys:Landroid/util/ArraySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPinnerStats()Ljava/util/List;
    .locals 7

    .line 1278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1280
    monitor-enter p0

    .line 1281
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 1282
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1283
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pinner/PinnedFile;

    .line 1284
    new-instance v3, Landroid/app/pinner/PinnedFileStat;

    iget-object v4, v2, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    iget-wide v5, v2, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    iget-object v2, v2, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6, v2}, Landroid/app/pinner/PinnedFileStat;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 1285
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1287
    :cond_0
    iget-wide v1, p0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 1288
    new-instance v1, Landroid/app/pinner/PinnedFileStat;

    const-string v2, "[anon]"

    iget-wide v3, p0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    const-string p0, "[anon]"

    invoke-direct {v1, v2, v3, v4, p0}, Landroid/app/pinner/PinnedFileStat;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    .line 1282
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getSizeLimitForKey(I)I
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 822
    :cond_0
    iget p0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredAssistantPinBytes:I

    return p0

    .line 820
    :cond_1
    iget p0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredHomePinBytes:I

    return p0

    .line 818
    :cond_2
    iget p0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredCameraPinBytes:I

    return p0
.end method

.method public final getUidForKey(I)I
    .locals 1

    .line 691
    monitor-enter p0

    .line 692
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pinner/PinnerService$PinnedApp;

    if-eqz p1, :cond_0

    .line 693
    iget-boolean v0, p1, Lcom/android/server/pinner/PinnerService$PinnedApp;->active:Z

    if-eqz v0, :cond_0

    iget p1, p1, Lcom/android/server/pinner/PinnerService$PinnedApp;->uid:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, -0x1

    :goto_0
    monitor-exit p0

    return p1

    .line 694
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getWebviewPinQuota()I
    .locals 2

    .line 492
    iget p0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredWebviewPinBytes:I

    .line 493
    const-string/jumbo v0, "pinner.pin_webview_size"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public final handlePinOnStart()V
    .locals 10

    .line 380
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 383
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 384
    const-string/jumbo v8, "system"

    const/4 v9, 0x1

    const-wide/32 v5, 0x7fffffff

    const/4 v7, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pinner/PinnerService;->pinFile(Ljava/lang/String;JLandroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Lcom/android/server/pinner/PinnedFile;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v3, p0

    .line 388
    invoke-virtual {v3}, Lcom/android/server/pinner/PinnerService;->refreshPinAnonConfig()V

    return-void
.end method

.method public final handleUidActive(I)V
    .locals 1

    const/4 v0, 0x1

    .line 447
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pinner/PinnerService;->updateActiveState(IZ)V

    return-void
.end method

.method public final handleUidGone(I)V
    .locals 5

    const/4 v0, 0x0

    .line 433
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pinner/PinnerService;->updateActiveState(IZ)V

    .line 435
    monitor-enter p0

    .line 437
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 439
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 441
    :cond_0
    iget-object v2, p0, Lcom/android/server/pinner/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/pinner/PinnerService;->pinApp(IIZ)V

    return-void

    .line 442
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final isResolverActivity(Landroid/content/pm/ActivityInfo;)Z
    .locals 0

    .line 485
    const-class p0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 6

    .line 292
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredMaxPinnedMemoryPercentage:I

    int-to-long v2, v2

    const/16 v4, 0x64

    const/4 v5, 0x0

    .line 293
    invoke-static {v2, v3, v5, v4}, Ljava/lang/Math;->clamp(JII)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredMaxPinnedMemory:J

    .line 295
    new-instance v0, Lcom/android/server/pinner/PinnerService$BinderService;

    invoke-direct {v0, p0}, Lcom/android/server/pinner/PinnerService$BinderService;-><init>(Lcom/android/server/pinner/PinnerService;)V

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mBinderService:Lcom/android/server/pinner/PinnerService$BinderService;

    .line 296
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mInjector:Lcom/android/server/pinner/PinnerService$Injector;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/pinner/PinnerService$Injector;->publishBinderService(Lcom/android/server/pinner/PinnerService;Landroid/os/Binder;)V

    .line 297
    const-class v0, Lcom/android/server/pinner/PinnerService;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    const/16 v1, 0xfa1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 300
    invoke-virtual {p0, v5}, Lcom/android/server/pinner/PinnerService;->sendPinAppsMessage(I)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 311
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 312
    iget-object p2, p0, Lcom/android/server/pinner/PinnerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 313
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->sendPinAppsMessage(I)V

    :cond_0
    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 319
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    if-eqz p1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->sendPinAppsMessage(I)V

    :cond_0
    return-void
.end method

.method public final pinAnonRegion()V
    .locals 18

    move-object/from16 v0, p0

    .line 749
    iget-wide v1, v0, Lcom/android/server/pinner/PinnerService;->mPinAnonSize:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const-string v6, "PinnerService"

    if-nez v5, :cond_0

    .line 750
    const-string/jumbo v1, "pinAnonRegion: releasing pinned region"

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-virtual {v0}, Lcom/android/server/pinner/PinnerService;->unpinAnonRegion()V

    return-void

    .line 755
    :cond_0
    sget v5, Lcom/android/server/pinner/PinnerService;->PAGE_SIZE:I

    int-to-long v7, v5

    rem-long v7, v1, v7

    cmp-long v7, v7, v3

    if-eqz v7, :cond_1

    int-to-long v7, v5

    .line 756
    rem-long v7, v1, v7

    sub-long/2addr v1, v7

    .line 757
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pinAnonRegion: aligning size to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-wide v9, v1

    .line 759
    iget-wide v1, v0, Lcom/android/server/pinner/PinnerService;->mPinAnonAddress:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 760
    iget-wide v1, v0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    cmp-long v1, v1, v9

    if-nez v1, :cond_2

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pinAnonRegion: already pinned region of size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 764
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pinAnonRegion: resetting pinned region for new size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-virtual {v0}, Lcom/android/server/pinner/PinnerService;->unpinAnonRegion()V

    .line 771
    :cond_3
    :try_start_0
    sget v1, Landroid/system/OsConstants;->PROT_READ:I

    sget v2, Landroid/system/OsConstants;->PROT_WRITE:I

    or-int v11, v1, v2

    sget v1, Landroid/system/OsConstants;->MAP_SHARED:I

    sget v2, Landroid/system/OsConstants;->MAP_ANONYMOUS:I

    or-int v12, v1, v2

    new-instance v13, Ljava/io/FileDescriptor;

    invoke-direct {v13}, Ljava/io/FileDescriptor;-><init>()V

    const-wide/16 v14, 0x0

    const-wide/16 v7, 0x0

    invoke-static/range {v7 .. v15}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 776
    :try_start_1
    const-class v5, Lsun/misc/Unsafe;

    .line 777
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    array-length v8, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v11

    move-object v14, v12

    :goto_0
    const/4 v15, 0x1

    if-ge v13, v8, :cond_5

    move-wide/from16 v16, v3

    :try_start_2
    aget-object v3, v7, v13

    .line 778
    invoke-virtual {v3, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 779
    invoke-virtual {v3, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 780
    invoke-virtual {v5, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 781
    invoke-virtual {v5, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lsun/misc/Unsafe;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v3, v16

    goto :goto_0

    :cond_5
    move-wide/from16 v16, v3

    if-eqz v14, :cond_6

    .line 787
    const-string/jumbo v3, "setMemory"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v11

    aput-object v7, v4, v15

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v4, v8

    invoke-virtual {v5, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 788
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    filled-new-array {v4, v5, v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v14, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    invoke-static {v1, v2, v9, v10}, Landroid/system/Os;->mlock(JJ)V

    .line 790
    iput-wide v9, v0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    .line 791
    iput-wide v1, v0, Lcom/android/server/pinner/PinnerService;->mPinAnonAddress:J

    const-wide/16 v1, -0x1

    .line 793
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pinAnonRegion success, size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 785
    :cond_6
    new-instance v0, Ljava/lang/Exception;

    const-string v3, "Couldn\'t get Unsafe"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception v0

    move-wide/from16 v16, v3

    goto :goto_3

    :catch_1
    move-exception v0

    move-wide/from16 v16, v3

    goto :goto_2

    :catchall_2
    move-exception v0

    move-wide/from16 v16, v3

    move-wide/from16 v1, v16

    goto :goto_3

    :catch_2
    move-exception v0

    move-wide/from16 v16, v3

    move-wide/from16 v1, v16

    .line 795
    :goto_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not pin anon region of size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmp-long v0, v1, v16

    if-ltz v0, :cond_7

    .line 799
    invoke-static {v1, v2, v9, v10}, Lcom/android/server/pinner/PinnerUtils;->safeMunmap(JJ)V

    :cond_7
    return-void

    :goto_3
    cmp-long v3, v1, v16

    if-ltz v3, :cond_8

    invoke-static {v1, v2, v9, v10}, Lcom/android/server/pinner/PinnerUtils;->safeMunmap(JJ)V

    .line 801
    :cond_8
    throw v0
.end method

.method public final pinApp(IIZ)V
    .locals 1

    .line 668
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->getUidForKey(I)I

    move-result v0

    if-nez p3, :cond_0

    const/4 p3, -0x1

    if-eq v0, p3, :cond_0

    .line 673
    monitor-enter p0

    .line 674
    :try_start_0
    iget-object p2, p0, Lcom/android/server/pinner/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 678
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pinner/PinnerService;->getInfoForKey(II)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 679
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->unpinApp(I)V

    if-eqz p2, :cond_1

    .line 681
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pinner/PinnerService;->pinAppInternal(ILandroid/content/pm/ApplicationInfo;)V

    :cond_1
    return-void
.end method

.method public final pinAppInternal(ILandroid/content/pm/ApplicationInfo;)V
    .locals 12

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 847
    :cond_0
    new-instance v0, Lcom/android/server/pinner/PinnerService$PinnedApp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/server/pinner/PinnerService$PinnedApp;-><init>(Lcom/android/server/pinner/PinnerService;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pinner/PinnerService-IA;)V

    .line 848
    monitor-enter p0

    .line 849
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 853
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->getSizeLimitForKey(I)I

    move-result v1

    .line 854
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 855
    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 858
    array-length v5, v3

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v3, v6

    .line 859
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    int-to-long v5, v1

    .line 865
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-wide v7, v5

    :goto_1
    if-ge v4, v1, :cond_4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-gtz v3, :cond_2

    .line 867
    const-string v3, "PinnerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reached to the pin size limit. Skipping: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p0

    move-object v9, p2

    goto :goto_2

    .line 872
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->getNameForKey(I)Ljava/lang/String;

    move-result-object v10

    .line 873
    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    move-object v5, p0

    move-object v9, p2

    .line 874
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/pinner/PinnerService;->pinFile(Ljava/lang/String;JLandroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Lcom/android/server/pinner/PinnedFile;

    move-result-object p0

    if-nez p0, :cond_3

    .line 876
    const-string p0, "PinnerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to pin "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object p0, v5

    move-object p2, v9

    goto :goto_1

    .line 883
    :cond_3
    monitor-enter v5

    .line 884
    :try_start_1
    iget-object p2, v0, Lcom/android/server/pinner/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 887
    iget-wide v10, p0, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    sub-long/2addr v7, v10

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 885
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_4
    :goto_3
    return-void

    :catchall_1
    move-exception v0

    move-object v5, p0

    :goto_4
    move-object p0, v0

    .line 850
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :catchall_2
    move-exception v0

    goto :goto_4
.end method

.method public final pinApps(I)V
    .locals 1

    const/4 v0, 0x0

    .line 619
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pinner/PinnerService;->pinAppsInternal(IZ)V

    return-void
.end method

.method public final pinAppsInternal(IZ)V
    .locals 3

    if-eqz p2, :cond_1

    .line 632
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->createPinKeys()Landroid/util/ArraySet;

    move-result-object p2

    .line 633
    monitor-enter p0

    .line 635
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 636
    const-string p1, "PinnerService"

    const-string p2, "Attempted to update a list of apps, but apps were already pinned. Skipping."

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 642
    :cond_0
    iput-object p2, p0, Lcom/android/server/pinner/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    .line 643
    monitor-exit p0

    goto :goto_1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 646
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->getPinKeys()Landroid/util/ArraySet;

    move-result-object p2

    .line 647
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_2
    if-ltz v0, :cond_2

    .line 648
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 649
    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/pinner/PinnerService;->pinApp(IIZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final pinAppsWithUpdatedKeys(I)V
    .locals 1

    const/4 v0, 0x1

    .line 623
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pinner/PinnerService;->pinAppsInternal(IZ)V

    return-void
.end method

.method public pinFile(Ljava/lang/String;JLandroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Lcom/android/server/pinner/PinnedFile;
    .locals 8

    .line 909
    monitor-enter p0

    .line 910
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pinner/PinnedFile;

    .line 911
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 913
    iget-wide v2, v0, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    cmp-long v0, v2, p2

    if-nez v0, :cond_0

    return-object v1

    .line 922
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->unpinFile(Ljava/lang/String;)J

    .line 926
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->getAvailableGlobalQuota()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    .line 930
    const-string p0, "PinnerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Reached pin quota, skipping file: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 933
    :cond_2
    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 936
    const-string p2, ".apk"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    .line 938
    iget-object v2, p0, Lcom/android/server/pinner/PinnerService;->mInjector:Lcom/android/server/pinner/PinnerService$Injector;

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pinner/PinnerService$Injector;->pinFileInternal(Lcom/android/server/pinner/PinnerService;Ljava/lang/String;JZ)Lcom/android/server/pinner/PinnedFile;

    move-result-object p0

    if-nez p0, :cond_3

    .line 941
    const-string p0, "PinnerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to pin file = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    if-eqz p5, :cond_4

    goto :goto_0

    .line 944
    :cond_4
    const-string p5, ""

    :goto_0
    iput-object p5, p0, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    .line 946
    iget-wide p1, v3, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    iget-wide v0, p0, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    add-long/2addr p1, v0

    iput-wide p1, v3, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    .line 948
    monitor-enter v3

    .line 949
    :try_start_1
    iget-object p1, v3, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    iget-object p2, p0, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p6, :cond_5

    .line 953
    iget-wide p1, v3, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    .line 954
    invoke-virtual {v3}, Lcom/android/server/pinner/PinnerService;->getAvailableGlobalQuota()J

    move-result-wide p5

    invoke-virtual {v3, p0, p5, p6, p4}, Lcom/android/server/pinner/PinnerService;->pinOptimizedDexDependencies(Lcom/android/server/pinner/PinnedFile;JLandroid/content/pm/ApplicationInfo;)J

    move-result-wide p3

    add-long/2addr p1, p3

    iput-wide p1, v3, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    :cond_5
    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 950
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    move-object v3, p0

    :goto_1
    move-object p0, v0

    .line 911
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :catchall_2
    move-exception v0

    goto :goto_1
.end method

.method public final pinFileInternal(Ljava/lang/String;JZ)Lcom/android/server/pinner/PinnedFile;
    .locals 4

    const/4 p0, 0x0

    if-eqz p4, :cond_0

    .line 1062
    :try_start_0
    invoke-static {p1}, Lcom/android/server/pinner/PinnerService;->maybeOpenZip(Ljava/lang/String;)Ljava/util/zip/ZipFile;

    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object p4, p0

    goto :goto_4

    :cond_0
    move-object p4, p0

    :goto_0
    if-eqz p4, :cond_1

    .line 1066
    :try_start_1
    invoke-static {p4, p1}, Lcom/android/server/pinner/PinnerService;->maybeOpenPinMetaInZip(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_1
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    if-eqz v1, :cond_3

    .line 1070
    new-instance v0, Lcom/android/server/pinner/PinRangeSourceStream;

    invoke-direct {v0, p0}, Lcom/android/server/pinner/PinRangeSourceStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_3

    .line 1071
    :cond_3
    new-instance v2, Lcom/android/server/pinner/PinRangeSourceStatic;

    const v3, 0x7fffffff

    invoke-direct {v2, v0, v3}, Lcom/android/server/pinner/PinRangeSourceStatic;-><init>(II)V

    move-object v0, v2

    .line 1072
    :goto_3
    invoke-static {p1, p2, p3, v0}, Lcom/android/server/pinner/PinnerService;->pinFileRanges(Ljava/lang/String;JLcom/android/server/pinner/PinRangeSource;)Lcom/android/server/pinner/PinnedFile;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1074
    iput-boolean v1, p1, Lcom/android/server/pinner/PinnedFile;->used_pinlist:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1078
    :cond_4
    invoke-static {p0}, Lcom/android/server/pinner/PinnerUtils;->safeClose(Ljava/io/Closeable;)V

    .line 1079
    invoke-static {p4}, Lcom/android/server/pinner/PinnerUtils;->safeClose(Ljava/io/Closeable;)V

    return-object p1

    .line 1078
    :goto_4
    invoke-static {p0}, Lcom/android/server/pinner/PinnerUtils;->safeClose(Ljava/io/Closeable;)V

    .line 1079
    invoke-static {p4}, Lcom/android/server/pinner/PinnerUtils;->safeClose(Ljava/io/Closeable;)V

    .line 1080
    throw p1
.end method

.method public final pinOptimizedDexDependencies(Lcom/android/server/pinner/PinnedFile;JLandroid/content/pm/ApplicationInfo;)J
    .locals 10

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 975
    :cond_0
    iget-object v2, p1, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    const-string v3, ".jar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p1, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v2, v3

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    if-eqz p4, :cond_1

    .line 978
    iget-object p4, p4, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p4, v2

    :goto_0
    const/4 v3, 0x0

    if-nez p4, :cond_2

    .line 981
    sget-object p4, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object p4, p4, v3

    .line 984
    :cond_2
    invoke-static {p4}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 987
    :try_start_0
    iget-object v4, p1, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    invoke-static {v4, p4}, Ldalvik/system/DexFile;->getDexFileOutputPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v2, :cond_3

    goto :goto_2

    .line 993
    :cond_3
    array-length p4, v2

    move-wide v7, p2

    :goto_1
    if-ge v3, p4, :cond_5

    aget-object v6, v2, v3

    .line 995
    invoke-virtual {p0, v6}, Lcom/android/server/pinner/PinnerService;->unpinFile(Ljava/lang/String;)J

    .line 997
    iget-object v4, p0, Lcom/android/server/pinner/PinnerService;->mInjector:Lcom/android/server/pinner/PinnerService$Injector;

    const/4 v9, 0x0

    move-object v5, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pinner/PinnerService$Injector;->pinFileInternal(Lcom/android/server/pinner/PinnerService;Ljava/lang/String;JZ)Lcom/android/server/pinner/PinnedFile;

    move-result-object p0

    if-nez p0, :cond_4

    .line 1000
    const-string p0, "PinnerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to pin ART file = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    .line 1003
    :cond_4
    iget-object p2, p1, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    .line 1004
    iget-object p2, p1, Lcom/android/server/pinner/PinnedFile;->pinnedDeps:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1005
    iget-wide p2, p0, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    sub-long/2addr v7, p2

    add-long/2addr v0, p2

    .line 1007
    monitor-enter v5

    .line 1008
    :try_start_1
    iget-object p2, v5, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    iget-object p3, p0, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    invoke-virtual {p2, p3, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    monitor-exit v5

    add-int/lit8 v3, v3, 0x1

    move-object p0, v5

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    :goto_2
    return-wide v0
.end method

.method public final refreshPinAnonConfig()V
    .locals 5

    .line 736
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mDeviceConfigInterface:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v1, "pin_shared_anon_size"

    sget-wide v2, Lcom/android/server/pinner/PinnerService;->DEFAULT_ANON_SIZE:J

    const-string/jumbo v4, "runtime_native"

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/provider/DeviceConfigInterface;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide v2, 0x80000000L

    .line 738
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 739
    iget-wide v2, p0, Lcom/android/server/pinner/PinnerService;->mPinAnonSize:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 740
    iput-wide v0, p0, Lcom/android/server/pinner/PinnerService;->mPinAnonSize:J

    .line 741
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->pinAnonRegion()V

    :cond_0
    return-void
.end method

.method public final registerUidListener()V
    .locals 4

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mAm:Landroid/app/IActivityManager;

    new-instance v1, Lcom/android/server/pinner/PinnerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/pinner/PinnerService$4;-><init>(Lcom/android/server/pinner/PinnerService;)V

    const/4 p0, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-interface {v0, v1, v3, p0, v2}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 428
    const-string v0, "PinnerService"

    const-string v1, "Failed to register uid observer"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final registerUserSetupCompleteListener()V
    .locals 4

    .line 397
    const-string/jumbo v0, "user_setup_complete"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/android/server/pinner/PinnerService$3;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Lcom/android/server/pinner/PinnerService$3;-><init>(Lcom/android/server/pinner/PinnerService;Landroid/os/Handler;Landroid/net/Uri;)V

    const/4 p0, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final sendPinAppMessage(IIZ)V
    .locals 2

    .line 657
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    new-instance v1, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda1;-><init>()V

    .line 658
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {v1, p0, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 657
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendPinAppsMessage(I)V
    .locals 2

    .line 579
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    new-instance v1, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda0;-><init>()V

    .line 580
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 579
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendPinAppsWithUpdatedKeysMessage(I)V
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    new-instance v1, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda3;-><init>()V

    .line 585
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 584
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendUnpinAppsMessage()V
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    new-instance v1, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final unpinAnonRegion()V
    .locals 6

    .line 805
    iget-wide v0, p0, Lcom/android/server/pinner/PinnerService;->mPinAnonAddress:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 806
    iget-wide v4, p0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    invoke-static {v0, v1, v4, v5}, Lcom/android/server/pinner/PinnerUtils;->safeMunmap(JJ)V

    .line 808
    :cond_0
    iput-wide v2, p0, Lcom/android/server/pinner/PinnerService;->mPinAnonAddress:J

    .line 809
    iput-wide v2, p0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    return-void
.end method

.method public final unpinApp(I)V
    .locals 3

    .line 471
    monitor-enter p0

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pinner/PinnerService$PinnedApp;

    if-nez v0, :cond_0

    .line 474
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 476
    :cond_0
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/pinner/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 478
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/pinner/PinnedFile;

    .line 480
    iget-object v2, v2, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/pinner/PinnerService;->unpinFile(Ljava/lang/String;)J

    goto :goto_0

    :cond_1
    return-void

    .line 478
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final unpinApps()V
    .locals 3

    .line 462
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->getPinKeys()Landroid/util/ArraySet;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 464
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 465
    invoke-virtual {p0, v2}, Lcom/android/server/pinner/PinnerService;->unpinApp(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public unpinFile(Ljava/lang/String;)J
    .locals 9

    .line 1245
    monitor-enter p0

    .line 1246
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pinner/PinnedFile;

    .line 1247
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 1252
    :cond_0
    iget-wide v0, p1, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    .line 1253
    invoke-virtual {p1}, Lcom/android/server/pinner/PinnedFile;->close()V

    .line 1254
    monitor-enter p0

    .line 1258
    :try_start_1
    iget-wide v2, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    iget-wide v4, p1, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    .line 1260
    iget-object v2, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    iget-object p1, p1, Lcom/android/server/pinner/PinnedFile;->pinnedDeps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/pinner/PinnedFile;

    if-nez v4, :cond_1

    goto :goto_0

    .line 1265
    :cond_1
    iget-wide v5, v4, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    sub-long/2addr v0, v5

    .line 1266
    iget-wide v7, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    sub-long/2addr v7, v5

    iput-wide v7, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    .line 1267
    iget-object v5, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    iget-object v4, v4, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1272
    :cond_2
    monitor-exit p0

    return-wide v0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 1247
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public unpinGroup(Ljava/lang/String;)V
    .locals 1

    .line 1231
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->getAllPinsForGroup(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1232
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pinner/PinnedFile;

    .line 1233
    iget-object v0, v0, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pinner/PinnerService;->unpinFile(Ljava/lang/String;)J

    goto :goto_0

    :cond_0
    return-void
.end method

.method public update(Landroid/util/ArraySet;Z)V
    .locals 7

    .line 332
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->getPinKeys()Landroid/util/ArraySet;

    move-result-object v0

    .line 333
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 334
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 335
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 336
    invoke-virtual {p0, v3, v1}, Lcom/android/server/pinner/PinnerService;->getInfoForKey(II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 337
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 338
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating pinned files for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " force="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PinnerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {p0, v3, v1, p2}, Lcom/android/server/pinner/PinnerService;->sendPinAppMessage(IIZ)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateActiveState(IZ)V
    .locals 3

    .line 451
    monitor-enter p0

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 453
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pinner/PinnerService$PinnedApp;

    .line 454
    iget v2, v1, Lcom/android/server/pinner/PinnerService$PinnedApp;->uid:I

    if-ne v2, p1, :cond_0

    .line 455
    iput-boolean p2, v1, Lcom/android/server/pinner/PinnerService$PinnedApp;->active:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 458
    :cond_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
