.class final Lcom/android/server/companion/virtual/VirtualDeviceImpl;
.super Landroid/companion/virtual/IVirtualDevice$Stub;
.source "VirtualDeviceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;


# static fields
.field public static final DEVICE_PROFILES_ALLOWING_MIRROR_DISPLAYS:Ljava/util/List;


# instance fields
.field public mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

.field public mActivityListenerAdapter:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

.field public final mActivityPolicyExemptions:Ljava/util/Set;

.field public final mActivityPolicyPackageExemptions:Ljava/util/Set;

.field public final mAppToken:Landroid/os/IBinder;

.field public final mAssociationInfo:Landroid/companion/AssociationInfo;

.field public final mAttributionSource:Landroid/content/AttributionSource;

.field public final mBaseVirtualDisplayFlags:I

.field public final mCameraAccessController:Lcom/android/server/companion/virtual/CameraAccessController;

.field public final mContext:Landroid/content/Context;

.field public mDefaultShowPointerIcon:Z

.field public final mDeviceId:I

.field public final mDevicePolicies:Landroid/util/SparseIntArray;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManagerGlobal;

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mInputController:Lcom/android/server/companion/virtual/InputController;

.field public final mIntentInterceptors:Ljava/util/Map;

.field public mLocaleList:Landroid/os/LocaleList;

.field public mLockdownActive:Z

.field public final mOwnerPackageName:Ljava/lang/String;

.field public final mOwnerUid:I

.field public final mParams:Landroid/companion/virtual/VirtualDeviceParams;

.field public final mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

.field public final mPersistentDeviceId:Ljava/lang/String;

.field public final mPowerLock:Ljava/lang/Object;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mPublicVirtualDeviceObject:Landroid/companion/virtual/VirtualDevice;

.field public mRequestedToBeAwake:Z

.field public final mRunningAppsChangedCallback:Ljava/util/function/Consumer;

.field public final mSensorController:Lcom/android/server/companion/virtual/SensorController;

.field public final mService:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

.field public mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

.field public mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

.field public final mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

.field public final mVirtualDeviceLock:Ljava/lang/Object;

.field public final mVirtualDeviceLog:Lcom/android/server/companion/virtual/VirtualDeviceLog;

.field public final mVirtualDisplays:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$RaugeT8uCZZ5nfGjgxbmta7PqXg(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->lambda$launchPendingIntent$0(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z53MQXY6IsRZRvjFonPCLjY24-0(Lcom/android/server/companion/virtual/VirtualDeviceImpl;ILcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;ZLcom/android/server/companion/virtual/GenericWindowPolicyController;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->lambda$createVirtualDisplay$1(ILcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;ZLcom/android/server/companion/virtual/GenericWindowPolicyController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uN140wfIUX0kWtdsfc-KpevIzLQ(ILcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;)Z
    .locals 0

    .line 1818
    invoke-virtual {p1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getInputDeviceId()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityListener(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Landroid/companion/virtual/IVirtualDeviceActivityListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAttributionSource(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Landroid/content/AttributionSource;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIntentInterceptors(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mIntentInterceptors:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOwnerPackageName(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOwnerUid(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshouldShowBlockedActivityDialog(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->shouldShowBlockedActivityDialog(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 159
    const-string v0, "android.app.role.COMPANION_DEVICE_APP_STREAMING"

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->DEVICE_PROFILES_ALLOWING_MIRROR_DISPLAYS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/companion/AssociationInfo;Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Lcom/android/server/companion/virtual/VirtualDeviceLog;Landroid/os/IBinder;Landroid/content/AttributionSource;ILcom/android/server/companion/virtual/CameraAccessController;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;Ljava/util/function/Consumer;Landroid/companion/virtual/VirtualDeviceParams;)V
    .locals 17

    .line 403
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v15

    .line 404
    invoke-static {}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->isVirtualCameraEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    new-instance v0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    const/4 v1, 0x5

    move-object/from16 v14, p13

    .line 406
    invoke-virtual {v14, v1}, Landroid/companion/virtual/VirtualDeviceParams;->getDevicePolicy(I)I

    move-result v1

    move/from16 v7, p7

    invoke-direct {v0, v1, v7}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;-><init>(II)V

    :goto_0
    move-object/from16 v16, v0

    goto :goto_1

    :cond_0
    move/from16 v7, p7

    move-object/from16 v14, p13

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    .line 388
    invoke-direct/range {v0 .. v16}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;-><init>(Landroid/content/Context;Landroid/companion/AssociationInfo;Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Lcom/android/server/companion/virtual/VirtualDeviceLog;Landroid/os/IBinder;Landroid/content/AttributionSource;ILcom/android/server/companion/virtual/InputController;Lcom/android/server/companion/virtual/CameraAccessController;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;Ljava/util/function/Consumer;Landroid/companion/virtual/VirtualDeviceParams;Landroid/hardware/display/DisplayManagerGlobal;Lcom/android/server/companion/virtual/camera/VirtualCameraController;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/companion/AssociationInfo;Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Lcom/android/server/companion/virtual/VirtualDeviceLog;Landroid/os/IBinder;Landroid/content/AttributionSource;ILcom/android/server/companion/virtual/InputController;Lcom/android/server/companion/virtual/CameraAccessController;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;Ljava/util/function/Consumer;Landroid/companion/virtual/VirtualDeviceParams;Landroid/hardware/display/DisplayManagerGlobal;Lcom/android/server/companion/virtual/camera/VirtualCameraController;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/companion/AssociationInfo;",
            "Lcom/android/server/companion/virtual/VirtualDeviceManagerService;",
            "Lcom/android/server/companion/virtual/VirtualDeviceLog;",
            "Landroid/os/IBinder;",
            "Landroid/content/AttributionSource;",
            "I",
            "Lcom/android/server/companion/virtual/InputController;",
            "Lcom/android/server/companion/virtual/CameraAccessController;",
            "Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;",
            "Landroid/companion/virtual/IVirtualDeviceActivityListener;",
            "Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;",
            "Ljava/util/function/Consumer<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroid/companion/virtual/VirtualDeviceParams;",
            "Landroid/hardware/display/DisplayManagerGlobal;",
            "Lcom/android/server/companion/virtual/camera/VirtualCameraController;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v7, p6

    move/from16 v6, p7

    move-object/from16 v4, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p14

    .line 427
    invoke-direct {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;-><init>()V

    .line 177
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 203
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    const/4 v5, 0x0

    .line 206
    iput-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListenerAdapter:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

    .line 211
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    iput-object v8, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mIntentInterceptors:Ljava/util/Map;

    const/4 v8, 0x1

    .line 217
    iput-boolean v8, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    .line 219
    iput-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLocaleList:Landroid/os/LocaleList;

    .line 224
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPowerLock:Ljava/lang/Object;

    const/4 v12, 0x0

    .line 225
    iput-boolean v12, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLockdownActive:Z

    .line 227
    iput-boolean v8, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mRequestedToBeAwake:Z

    .line 236
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    iput-object v9, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyPackageExemptions:Ljava/util/Set;

    .line 428
    iput-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLog:Lcom/android/server/companion/virtual/VirtualDeviceLog;

    .line 429
    invoke-virtual {v7}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerPackageName:Ljava/lang/String;

    .line 430
    iput-object v7, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 431
    invoke-virtual {v7}, Landroid/content/AttributionSource;->getUid()I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v9

    .line 432
    invoke-virtual {p1, v9, v12}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    .line 433
    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    if-nez v1, :cond_0

    goto :goto_0

    .line 436
    :cond_0
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->createPersistentDeviceId(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    iput-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPersistentDeviceId:Ljava/lang/String;

    move-object/from16 v1, p3

    .line 437
    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mService:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    move-object/from16 v1, p10

    .line 438
    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    move-object/from16 v1, p11

    .line 439
    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    move-object/from16 v1, p12

    .line 440
    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    move-object/from16 v1, p13

    .line 441
    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mRunningAppsChangedCallback:Ljava/util/function/Consumer;

    .line 442
    invoke-virtual {v7}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerUid:I

    .line 443
    iput v6, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    .line 444
    iput-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAppToken:Landroid/os/IBinder;

    .line 445
    iput-object v11, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 446
    invoke-virtual {v11}, Landroid/companion/virtual/VirtualDeviceParams;->getDevicePolicies()Landroid/util/SparseIntArray;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    move-object/from16 v13, p15

    .line 447
    iput-object v13, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDisplayManager:Landroid/hardware/display/DisplayManagerGlobal;

    .line 448
    const-class v13, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v13}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v13, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 449
    const-class v13, Landroid/os/PowerManager;

    invoke-virtual {p1, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManager;

    iput-object v13, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPowerManager:Landroid/os/PowerManager;

    const/4 v13, 0x4

    .line 451
    invoke-virtual {v5, v13, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    if-eqz v5, :cond_2

    .line 453
    const-string v5, "android.permission.ADD_TRUSTED_DISPLAY"

    invoke-virtual {v9, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 455
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Requires ADD_TRUSTED_DISPLAY permission to set a custom clipboard policy."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 461
    :cond_2
    :goto_1
    invoke-virtual {v11}, Landroid/companion/virtual/VirtualDeviceParams;->getLockState()I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 462
    const-string v5, "android.permission.ADD_ALWAYS_UNLOCKED_DISPLAY"

    invoke-virtual {v9, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    const/16 v5, 0x7140

    goto :goto_2

    .line 464
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Requires ADD_ALWAYS_UNLOCKED_DISPLAY permission to create an always unlocked virtual device."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/16 v5, 0x6140

    .line 469
    :goto_2
    iput v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mBaseVirtualDisplayFlags:I

    if-nez v4, :cond_5

    .line 472
    new-instance v4, Lcom/android/server/companion/virtual/InputController;

    .line 473
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v5

    const-class v8, Landroid/view/WindowManager;

    .line 474
    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-direct {v4, v5, v0, v7}, Lcom/android/server/companion/virtual/InputController;-><init>(Landroid/os/Handler;Landroid/view/WindowManager;Landroid/content/AttributionSource;)V

    iput-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    goto :goto_3

    .line 476
    :cond_5
    iput-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 478
    :goto_3
    new-instance v4, Lcom/android/server/companion/virtual/SensorController;

    .line 479
    invoke-virtual {v11}, Landroid/companion/virtual/VirtualDeviceParams;->getVirtualSensorCallback()Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    move-result-object v8

    invoke-virtual {v11}, Landroid/companion/virtual/VirtualDeviceParams;->getVirtualSensorConfigs()Ljava/util/List;

    move-result-object v9

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/companion/virtual/SensorController;-><init>(Landroid/companion/virtual/IVirtualDevice;ILandroid/content/AttributionSource;Landroid/companion/virtual/sensor/IVirtualSensorCallback;Ljava/util/List;)V

    iput-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    .line 480
    iput-object v10, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mCameraAccessController:Lcom/android/server/companion/virtual/CameraAccessController;

    if-eqz v10, :cond_6

    .line 482
    invoke-virtual {v10}, Lcom/android/server/companion/virtual/CameraAccessController;->startObservingIfNeeded()V

    :cond_6
    move-object/from16 v0, p16

    .line 484
    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    .line 486
    :try_start_0
    invoke-interface {v3, p0, v12}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    invoke-virtual {v2, v6, v1}, Lcom/android/server/companion/virtual/VirtualDeviceLog;->logCreated(II)V

    .line 492
    new-instance v0, Landroid/companion/virtual/VirtualDevice;

    .line 493
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDeviceId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getPersistentDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Landroid/companion/virtual/VirtualDeviceParams;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 p2, p0

    move-object p1, v0

    move/from16 p3, v1

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    invoke-direct/range {p1 .. p6}, Landroid/companion/virtual/VirtualDevice;-><init>(Landroid/companion/virtual/IVirtualDevice;ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPublicVirtualDeviceObject:Landroid/companion/virtual/VirtualDevice;

    .line 495
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x3

    .line 496
    invoke-virtual {v11, v1}, Landroid/companion/virtual/VirtualDeviceParams;->getDevicePolicy(I)I

    move-result v1

    if-nez v1, :cond_7

    .line 497
    invoke-virtual {v11}, Landroid/companion/virtual/VirtualDeviceParams;->getBlockedActivities()Ljava/util/Set;

    move-result-object v1

    goto :goto_4

    .line 498
    :cond_7
    invoke-virtual {v11}, Landroid/companion/virtual/VirtualDeviceParams;->getAllowedActivities()Ljava/util/Set;

    move-result-object v1

    :goto_4
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyExemptions:Ljava/util/Set;

    .line 500
    invoke-virtual {v11}, Landroid/companion/virtual/VirtualDeviceParams;->getInputMethodComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 501
    invoke-virtual {v11}, Landroid/companion/virtual/VirtualDeviceParams;->getInputMethodComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting custom input method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as default for virtual device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VirtualDeviceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v6, p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->setVirtualDeviceInputMethodForAllUsers(ILjava/lang/String;)V

    :cond_8
    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 488
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static createPersistentDeviceId(I)Ljava/lang/String;
    .locals 2

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "companion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isVirtualCameraEnabled()Z
    .locals 1

    .line 1931
    invoke-static {}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->nativeVirtualCameraServiceBuildFlagEnabled()Z

    move-result v0

    return v0
.end method

.method private static native nativeVirtualCameraServiceBuildFlagEnabled()Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public addActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V
    .locals 4

    .line 689
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 690
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getDisplayId()I

    move-result v0

    .line 691
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, -0x1

    .line 696
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    if-eq v0, v2, :cond_1

    .line 698
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkDisplayOwnedByVirtualDeviceLocked(I)V

    .line 699
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 700
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object p0

    .line 701
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->addActivityPolicyExemption(Landroid/content/ComponentName;)V

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 702
    :cond_0
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 703
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object p0

    .line 704
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->addActivityPolicyExemption(Ljava/lang/String;)V

    goto :goto_2

    .line 707
    :cond_1
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyExemptions:Ljava/util/Set;

    .line 708
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 709
    :goto_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 710
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v0

    .line 711
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->addActivityPolicyExemption(Landroid/content/ComponentName;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 713
    :cond_2
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyPackageExemptions:Ljava/util/Set;

    .line 714
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 715
    :goto_1
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 716
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v0

    .line 717
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->addActivityPolicyExemption(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 721
    :cond_3
    :goto_2
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public binderDied()V
    .locals 0

    .line 834
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->close()V

    return-void
.end method

.method public canCreateMirrorDisplays()Z
    .locals 1

    .line 1369
    sget-object v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->DEVICE_PROFILES_ALLOWING_MIRROR_DISPLAYS:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDeviceProfile()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final checkCallerIsDeviceOwner()V
    .locals 1

    .line 1667
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerUid:I

    if-ne v0, p0, :cond_0

    return-void

    .line 1668
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller is not the owner of this virtual device"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkDisplayOwnedByVirtualDeviceLocked(I)V
    .locals 2

    .line 1659
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 1660
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid displayId: Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not associated with this virtual device"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkVirtualInputDeviceDisplayIdAssociation(I)V
    .locals 2

    .line 1644
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INJECT_EVENTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 1646
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1647
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkDisplayOwnedByVirtualDeviceLocked(I)V

    .line 1648
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 1649
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isTrusted()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isMirror()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 1650
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Cannot create input device associated with an untrusted display"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1653
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return-void
.end method

.method public close()V
    .locals 10

    .line 779
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mService:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    iget v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->removeVirtualDevice(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLog:Lcom/android/server/companion/virtual/VirtualDeviceLog;

    iget v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    iget v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/companion/virtual/VirtualDeviceLog;->logClosed(II)V

    .line 786
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 789
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 790
    :try_start_1
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 791
    invoke-virtual {v3}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->stopListening()V

    .line 792
    iput-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    .line 794
    :cond_1
    :goto_0
    iput-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLocaleList:Landroid/os/LocaleList;

    .line 795
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    new-array v5, v3, [Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    const/4 v6, 0x0

    move v7, v6

    .line 796
    :goto_1
    iget-object v8, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 797
    iget-object v8, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 799
    :cond_2
    iget-object v7, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    .line 800
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v6

    :goto_2
    if-ge v2, v3, :cond_3

    .line 802
    :try_start_2
    aget-object v7, v5, v2

    .line 803
    iget-object v8, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDisplayManager:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v7}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getToken()Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/hardware/display/DisplayManagerGlobal;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V

    .line 808
    invoke-virtual {p0, v7}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->releaseOwnedVirtualDisplayResources(Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_5

    .line 811
    :cond_3
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAppToken:Landroid/os/IBinder;

    invoke-interface {v2, p0, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 812
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mCameraAccessController:Lcom/android/server/companion/virtual/CameraAccessController;

    if-eqz v2, :cond_4

    .line 813
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/CameraAccessController;->stopObservingIfNeeded()V

    .line 817
    :cond_4
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v2}, Landroid/companion/virtual/VirtualDeviceParams;->getInputMethodComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 818
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v2

    iget v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->setVirtualDeviceInputMethodForAllUsers(ILjava/lang/String;)V

    .line 822
    :cond_5
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/InputController;->close()V

    .line 823
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/SensorController;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 825
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 827
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    if-eqz p0, :cond_6

    .line 828
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->close()V

    :cond_6
    :goto_3
    return-void

    .line 800
    :goto_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 825
    :goto_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 826
    throw p0
.end method

.method public createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;)I
    .locals 7

    .line 1470
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1473
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplayConfig;->getFlags()I

    move-result v0

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 1475
    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDevicePolicy(I)I

    move-result v0

    if-nez v0, :cond_3

    .line 1481
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplayConfig;->getDisplayCategories()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->createWindowPolicyController(Ljava/util/Set;)Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v5

    .line 1486
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v6, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerPackageName:Ljava/lang/String;

    move-object v4, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/display/DisplayManagerInternal;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Ljava/lang/String;)I

    move-result v3

    move-object v2, v4

    const/4 p0, -0x1

    if-ne v3, p0, :cond_1

    return v3

    .line 1497
    :cond_1
    iget-object p0, v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter p0

    .line 1498
    :try_start_0
    iget-object p1, v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1502
    iget-object p1, v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    move-object v6, v5

    .line 1503
    iget-boolean v5, v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    .line 1504
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1505
    invoke-virtual {v4}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->acquireWakeLock()V

    .line 1506
    invoke-virtual {v6, v2}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->registerRunningAppsChangedListener(Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;)V

    .line 1508
    new-instance v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;

    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;ILcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;ZLcom/android/server/companion/virtual/GenericWindowPolicyController;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1521
    const-string/jumbo p0, "virtual_devices.value_virtual_display_created_count"

    iget-object p1, v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1523
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result p1

    .line 1521
    invoke-static {p0, p1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    return v3

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 1499
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Virtual device was not notified about the creation of display with ID "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1504
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1476
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "All displays must be trusted for devices with custom clipboard policy."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createVirtualDpad(Landroid/hardware/input/VirtualDpadConfig;Landroid/os/IBinder;)V
    .locals 9

    .line 974
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 975
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 976
    invoke-virtual {p1}, Landroid/hardware/input/VirtualDpadConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    .line 977
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 979
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualDpadConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/hardware/input/VirtualDpadConfig;->getVendorId()I

    move-result v5

    .line 980
    invoke-virtual {p1}, Landroid/hardware/input/VirtualDpadConfig;->getProductId()I

    move-result v6

    .line 981
    invoke-virtual {p1}, Landroid/hardware/input/VirtualDpadConfig;->getAssociatedDisplayId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getTargetDisplayIdForInput(I)I

    move-result v8

    move-object v7, p2

    .line 979
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/companion/virtual/InputController;->createDpad(Ljava/lang/String;IILandroid/os/IBinder;I)V
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 985
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 983
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 985
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 986
    throw p0
.end method

.method public createVirtualKeyboard(Landroid/hardware/input/VirtualKeyboardConfig;Landroid/os/IBinder;)V
    .locals 11

    .line 991
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 992
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 993
    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    .line 994
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 996
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getVendorId()I

    move-result v5

    .line 997
    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getProductId()I

    move-result v6

    .line 998
    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getTargetDisplayIdForInput(I)I

    move-result v8

    .line 999
    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getLanguageTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getLayoutType()Ljava/lang/String;

    move-result-object v10

    move-object v7, p2

    .line 996
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/companion/virtual/InputController;->createKeyboard(Ljava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;)V

    .line 1000
    iget-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1001
    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getLanguageTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLocaleList:Landroid/os/LocaleList;

    .line 1002
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1006
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 1002
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 1004
    :try_start_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1006
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1007
    throw p0
.end method

.method public createVirtualMouse(Landroid/hardware/input/VirtualMouseConfig;Landroid/os/IBinder;)V
    .locals 9

    .line 1012
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1013
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1014
    invoke-virtual {p1}, Landroid/hardware/input/VirtualMouseConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    .line 1015
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1017
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualMouseConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/hardware/input/VirtualMouseConfig;->getVendorId()I

    move-result v5

    .line 1018
    invoke-virtual {p1}, Landroid/hardware/input/VirtualMouseConfig;->getProductId()I

    move-result v6

    invoke-virtual {p1}, Landroid/hardware/input/VirtualMouseConfig;->getAssociatedDisplayId()I

    move-result v8

    move-object v7, p2

    .line 1017
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/companion/virtual/InputController;->createMouse(Ljava/lang/String;IILandroid/os/IBinder;I)V
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1022
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 1020
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1022
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1023
    throw p0
.end method

.method public createVirtualNavigationTouchpad(Landroid/hardware/input/VirtualNavigationTouchpadConfig;Landroid/os/IBinder;)V
    .locals 11

    .line 1047
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1048
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1049
    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    .line 1050
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1052
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 1053
    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getVendorId()I

    move-result v5

    .line 1054
    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getProductId()I

    move-result v6

    .line 1055
    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getTargetDisplayIdForInput(I)I

    move-result v8

    .line 1056
    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getHeight()I

    move-result v9

    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getWidth()I

    move-result v10

    move-object v7, p2

    .line 1052
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/companion/virtual/InputController;->createNavigationTouchpad(Ljava/lang/String;IILandroid/os/IBinder;III)V
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1060
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 1058
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1060
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1061
    throw p0
.end method

.method public createVirtualRotaryEncoder(Landroid/hardware/input/VirtualRotaryEncoderConfig;Landroid/os/IBinder;)V
    .locals 9

    .line 1086
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1087
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1088
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1089
    invoke-virtual {p1}, Landroid/hardware/input/VirtualRotaryEncoderConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    .line 1090
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1092
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualRotaryEncoderConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/hardware/input/VirtualRotaryEncoderConfig;->getVendorId()I

    move-result v5

    .line 1093
    invoke-virtual {p1}, Landroid/hardware/input/VirtualRotaryEncoderConfig;->getProductId()I

    move-result v6

    .line 1094
    invoke-virtual {p1}, Landroid/hardware/input/VirtualRotaryEncoderConfig;->getAssociatedDisplayId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getTargetDisplayIdForInput(I)I

    move-result v8

    move-object v7, p2

    .line 1092
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/companion/virtual/InputController;->createRotaryEncoder(Ljava/lang/String;IILandroid/os/IBinder;I)V
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1098
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 1096
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1098
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1099
    throw p0
.end method

.method public createVirtualStylus(Landroid/hardware/input/VirtualStylusConfig;Landroid/os/IBinder;)V
    .locals 11

    .line 1067
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1068
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1069
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1070
    invoke-virtual {p1}, Landroid/hardware/input/VirtualStylusConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    .line 1071
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1073
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualStylusConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/hardware/input/VirtualStylusConfig;->getVendorId()I

    move-result v5

    .line 1074
    invoke-virtual {p1}, Landroid/hardware/input/VirtualStylusConfig;->getProductId()I

    move-result v6

    invoke-virtual {p1}, Landroid/hardware/input/VirtualStylusConfig;->getAssociatedDisplayId()I

    move-result v8

    .line 1075
    invoke-virtual {p1}, Landroid/hardware/input/VirtualStylusConfig;->getHeight()I

    move-result v9

    invoke-virtual {p1}, Landroid/hardware/input/VirtualStylusConfig;->getWidth()I

    move-result v10

    move-object v7, p2

    .line 1073
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/companion/virtual/InputController;->createStylus(Ljava/lang/String;IILandroid/os/IBinder;III)V
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 1077
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1079
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1080
    throw p0
.end method

.method public createVirtualTouchscreen(Landroid/hardware/input/VirtualTouchscreenConfig;Landroid/os/IBinder;)V
    .locals 11

    .line 1029
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1030
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1031
    invoke-virtual {p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    .line 1032
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1034
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getVendorId()I

    move-result v5

    .line 1035
    invoke-virtual {p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getProductId()I

    move-result v6

    invoke-virtual {p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getAssociatedDisplayId()I

    move-result v8

    .line 1036
    invoke-virtual {p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getHeight()I

    move-result v9

    invoke-virtual {p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getWidth()I

    move-result v10

    move-object v7, p2

    .line 1034
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/companion/virtual/InputController;->createTouchscreen(Ljava/lang/String;IILandroid/os/IBinder;III)V
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1040
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 1038
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1040
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1041
    throw p0
.end method

.method public final createWakeLockForDisplay(I)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final createWindowPolicyController(Ljava/util/Set;)Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 1437
    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDevicePolicy(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v9, v3

    goto :goto_0

    :cond_0
    move v9, v2

    .line 1438
    :goto_0
    iget-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 1439
    invoke-virtual {v1}, Landroid/companion/virtual/VirtualDeviceParams;->getDefaultNavigationPolicy()I

    move-result v1

    if-nez v1, :cond_1

    move v12, v3

    goto :goto_1

    :cond_1
    move v12, v2

    :goto_1
    const/4 v1, 0x2

    .line 1441
    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDevicePolicy(I)I

    move-result v1

    if-nez v1, :cond_2

    move/from16 v16, v3

    goto :goto_2

    :cond_2
    move/from16 v16, v2

    .line 1443
    :goto_2
    iget-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1444
    :try_start_0
    iget-object v2, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListenerAdapter:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

    if-nez v2, :cond_3

    .line 1445
    new-instance v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Lcom/android/server/companion/virtual/VirtualDeviceImpl-IA;)V

    iput-object v2, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListenerAdapter:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_6

    .line 1448
    :cond_3
    :goto_3
    new-instance v4, Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    iget-object v7, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1452
    invoke-virtual {v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getAllowedUserHandles()Landroid/util/ArraySet;

    move-result-object v8

    iget-object v10, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyExemptions:Ljava/util/Set;

    iget-object v11, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyPackageExemptions:Ljava/util/Set;

    if-eqz v12, :cond_4

    .line 1458
    iget-object v2, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v2}, Landroid/companion/virtual/VirtualDeviceParams;->getBlockedCrossTaskNavigations()Ljava/util/Set;

    move-result-object v2

    :goto_4
    move-object v13, v2

    goto :goto_5

    .line 1459
    :cond_4
    iget-object v2, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v2}, Landroid/companion/virtual/VirtualDeviceParams;->getAllowedCrossTaskNavigations()Ljava/util/Set;

    move-result-object v2

    goto :goto_4

    :goto_5
    iget-object v14, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListenerAdapter:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;

    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 1463
    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceParams;->getHomeComponent()Landroid/content/ComponentName;

    move-result-object v17

    const/16 v5, 0x2000

    const/high16 v6, 0x80000

    move-object/from16 v15, p1

    invoke-direct/range {v4 .. v17}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;-><init>(IILandroid/content/AttributionSource;Landroid/util/ArraySet;ZLjava/util/Set;Ljava/util/Set;ZLjava/util/Set;Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;Ljava/util/Set;ZLandroid/content/ComponentName;)V

    monitor-exit v1

    return-object v4

    .line 1464
    :goto_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1400
    const-string p1, "    "

    .line 1401
    const-string p3, "  VirtualDevice: "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1402
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mDeviceId: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1403
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mAssociationId: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getAssociationId()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1404
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mOwnerPackageName: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1405
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mParams: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1406
    iget-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Landroid/companion/virtual/VirtualDeviceParams;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1407
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mVirtualDisplayIds: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1408
    iget-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter p3

    const/4 v0, 0x0

    .line 1409
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1412
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDevicePolicies: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mDefaultShowPointerIcon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1414
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1415
    iget-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p3, p2}, Lcom/android/server/companion/virtual/InputController;->dump(Ljava/io/PrintWriter;)V

    .line 1416
    iget-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    invoke-virtual {p3, p2}, Lcom/android/server/companion/virtual/SensorController;->dump(Ljava/io/PrintWriter;)V

    .line 1417
    iget-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    if-eqz p3, :cond_1

    .line 1418
    invoke-virtual {p3, p2, p1}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1420
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "hasCustomAudioInputSupport: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1421
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->hasCustomAudioInputSupportInternal()Z

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1420
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1414
    :goto_1
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getAllowedUserHandles()Landroid/util/ArraySet;
    .locals 8

    .line 1558
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1559
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1561
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 1562
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/UserManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 1563
    invoke-virtual {v4}, Landroid/os/UserManager;->getAllProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 1565
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 1564
    invoke-virtual {v3, v6}, Landroid/app/admin/DevicePolicyManager;->getNearbyAppStreamingPolicy(I)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 1570
    iget-object v6, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v6}, Landroid/companion/virtual/VirtualDeviceParams;->getUsersWithMatchingAccounts()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1571
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1568
    :cond_2
    :goto_1
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1576
    :cond_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1577
    throw p0
.end method

.method public getAssociationId()I
    .locals 0

    .line 612
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 614
    :cond_0
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getId()I

    move-result p0

    return p0
.end method

.method public getAudioPlaybackSessionId()I
    .locals 0

    .line 590
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDeviceParams;->getAudioPlaybackSessionId()I

    move-result p0

    return p0
.end method

.method public getAudioRecordingSessionId()I
    .locals 0

    .line 595
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDeviceParams;->getAudioRecordingSessionId()I

    move-result p0

    return p0
.end method

.method public getBaseVirtualDisplayFlags()I
    .locals 0

    .line 537
    iget p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mBaseVirtualDisplayFlags:I

    return p0
.end method

.method public getCameraAccessController()Lcom/android/server/companion/virtual/CameraAccessController;
    .locals 0

    .line 542
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mCameraAccessController:Lcom/android/server/companion/virtual/CameraAccessController;

    return-object p0
.end method

.method public getCursorPosition(Landroid/os/IBinder;)Landroid/graphics/PointF;
    .locals 2

    .line 1192
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1194
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/InputController;->getCursorPosition(Landroid/os/IBinder;)Landroid/graphics/PointF;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1196
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1197
    throw p0
.end method

.method public getDeviceId()I
    .locals 0

    .line 601
    iget p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    return p0
.end method

.method public getDeviceLocaleList()Landroid/os/LocaleList;
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 562
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLocaleList:Landroid/os/LocaleList;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 563
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDevicePolicy(I)I
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 584
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 585
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDeviceProfile()Ljava/lang/String;
    .locals 0

    .line 551
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDimDurationMillis()J
    .locals 2

    .line 1727
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDeviceParams;->getDimDuration()Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDisplayIds()[I
    .locals 5

    .line 1736
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1737
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1738
    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 1740
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1742
    :cond_0
    monitor-exit v0

    return-object v2

    .line 1743
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getDisplayIdsWhereUidIsRunning(I)Landroid/util/IntArray;
    .locals 4

    .line 1799
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 1800
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 1801
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1802
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->containsUid(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1803
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1806
    :cond_1
    monitor-exit v1

    return-object v0

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDisplayName()Ljava/lang/CharSequence;
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDeviceParams;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayWindowPolicyControllerForTest(I)Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    .locals 1

    .line 1749
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1750
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 1751
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1752
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1751
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getInputDeviceId(Landroid/os/IBinder;)I
    .locals 2

    .line 1115
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1117
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/InputController;->getInputDeviceId(Landroid/os/IBinder;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1119
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1120
    throw p0
.end method

.method public getOwnerUid()I
    .locals 0

    .line 1723
    iget p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerUid:I

    return p0
.end method

.method public getPersistentDeviceId()Ljava/lang/String;
    .locals 0

    .line 607
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPersistentDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getPublicVirtualDeviceObject()Landroid/companion/virtual/VirtualDevice;
    .locals 0

    .line 556
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPublicVirtualDeviceObject:Landroid/companion/virtual/VirtualDevice;

    return-object p0
.end method

.method public getScreenOffTimeoutMillis()J
    .locals 2

    .line 1731
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDeviceParams;->getScreenOffTimeout()Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSensorControllerForTest()Lcom/android/server/companion/virtual/SensorController;
    .locals 0

    .line 525
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    return-object p0
.end method

.method public final getTargetDisplayIdForInput(I)I
    .locals 1

    .line 1428
    const-class p0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManagerInternal;

    .line 1430
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayIdToMirror(I)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return p1

    :cond_0
    return p0
.end method

.method public getVirtualAudioControllerForTesting()Lcom/android/server/companion/virtual/audio/VirtualAudioController;
    .locals 0

    .line 848
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    return-object p0
.end method

.method public getVirtualCameraId(Landroid/companion/virtual/camera/VirtualCameraConfig;)Ljava/lang/String;
    .locals 0

    .line 1355
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1356
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    if-eqz p0, :cond_0

    .line 1359
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->getCameraId(Landroid/companion/virtual/camera/VirtualCameraConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1357
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Virtual camera controller is not available"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getVirtualSensorByHandle(I)Landroid/companion/virtual/sensor/VirtualSensor;
    .locals 0

    .line 1283
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/SensorController;->getSensorByHandle(I)Landroid/companion/virtual/sensor/VirtualSensor;

    move-result-object p0

    return-object p0
.end method

.method public getVirtualSensorList()Ljava/util/List;
    .locals 0

    .line 1277
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1278
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/SensorController;->getSensorList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public goToSleep()V
    .locals 3

    .line 619
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 620
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPowerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 621
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mRequestedToBeAwake:Z

    .line 622
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 623
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x4

    .line 625
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->goToSleepInternal(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 627
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 628
    throw p0

    :catchall_1
    move-exception p0

    .line 622
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public goToSleepInternal(I)V
    .locals 8

    .line 1674
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1675
    new-instance v6, Landroid/util/IntArray;

    invoke-direct {v6}, Landroid/util/IntArray;-><init>()V

    .line 1676
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    move v4, v0

    .line 1677
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1678
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 1679
    invoke-virtual {v5}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isTrusted()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isMirror()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 1682
    :cond_0
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1683
    invoke-virtual {v6, v5}, Landroid/util/IntArray;->add(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1685
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v0

    .line 1686
    :goto_2
    invoke-virtual {v6}, Landroid/util/IntArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 1687
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6, v7}, Landroid/util/IntArray;->get(I)I

    move-result v1

    const/4 v5, 0x0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/os/PowerManager;->goToSleep(IJII)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    return-void

    .line 1685
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public hasCustomAudioInputSupport()Z
    .locals 0

    .line 1364
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->hasCustomAudioInputSupportInternal()Z

    move-result p0

    return p0
.end method

.method public final hasCustomAudioInputSupportInternal()Z
    .locals 6

    const/4 v0, 0x1

    .line 1380
    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDevicePolicy(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return v0

    .line 1383
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1385
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-class v4, Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 1386
    invoke-virtual {v3}, Landroid/media/AudioManager;->getRegisteredPolicyMixes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/audiopolicy/AudioMix;

    .line 1387
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDeviceId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/audiopolicy/AudioMix;->matchesVirtualDeviceId(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1388
    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioMix;->getMixType()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, v0, :cond_1

    .line 1393
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1394
    throw p0
.end method

.method public isAppRunningOnVirtualDevice(I)Z
    .locals 4

    .line 1761
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 1762
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1763
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->containsUid(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    .line 1764
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1767
    :cond_1
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isDisplayOwnedByVirtualDevice(I)Z
    .locals 1

    .line 1811
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1812
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1813
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isInputDeviceOwnedByVirtualDevice(I)Z
    .locals 1

    .line 1817
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/InputController;->getInputDeviceDescriptors()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$createVirtualDisplay$1(ILcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;ZLcom/android/server/companion/virtual/GenericWindowPolicyController;)V
    .locals 2

    .line 1509
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/companion/virtual/InputController;->setMouseScalingEnabled(ZI)V

    .line 1510
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/companion/virtual/InputController;->setDisplayEligibilityForPointerCapture(ZI)V

    .line 1512
    invoke-virtual {p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isTrusted()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1513
    iget-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p2, p3, p1}, Lcom/android/server/companion/virtual/InputController;->setShowPointerIcon(ZI)V

    .line 1514
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/companion/virtual/InputController;->setDisplayImePolicy(II)V

    return-void

    :cond_0
    const/4 p0, 0x1

    .line 1517
    invoke-virtual {p4, p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->setShowInHostDeviceRecents(Z)V

    return-void
.end method

.method public final synthetic lambda$launchPendingIntent$0(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V
    .locals 3

    .line 672
    iget-object v0, p1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 674
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    invoke-interface {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;->stopWaitingForPendingTrampoline(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    return-void
.end method

.method public launchPendingIntent(ILandroid/app/PendingIntent;Landroid/os/ResultReceiver;)V
    .locals 7

    .line 653
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 654
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 655
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 656
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkDisplayOwnedByVirtualDeviceLocked(I)V

    .line 657
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 660
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->sendPendingIntent(ILandroid/app/PendingIntent;)V

    const/4 p0, 0x0

    .line 661
    invoke-virtual {p3, p0, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 663
    const-string p1, "VirtualDeviceImpl"

    const-string p2, "Pending intent canceled"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
    invoke-virtual {p3, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 668
    :cond_0
    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    invoke-direct {v0, p2, p3, p1, v2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;-><init>(Landroid/app/PendingIntent;Landroid/os/ResultReceiver;ILcom/android/server/companion/virtual/VirtualDeviceImpl-IA;)V

    .line 670
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    invoke-interface {v3, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;->startWaitingForPendingTrampoline(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    .line 671
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 677
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->sendPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 679
    const-string p2, "VirtualDeviceImpl"

    const-string v3, "Pending intent canceled"

    invoke-static {p2, v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 680
    invoke-virtual {p3, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 682
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    invoke-interface {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;->stopWaitingForPendingTrampoline(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 657
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public onAudioSessionEnded()V
    .locals 2

    .line 870
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 871
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 872
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    if-eqz v1, :cond_0

    .line 873
    invoke-virtual {v1}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->stopListening()V

    const/4 v1, 0x0

    .line 874
    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 876
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

.method public onAudioSessionStarting(ILandroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V
    .locals 4

    .line 855
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 856
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 857
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkDisplayOwnedByVirtualDeviceLocked(I)V

    .line 858
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    if-nez v1, :cond_0

    .line 859
    new-instance v1, Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-direct {v1, v2, v3}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;-><init>(Landroid/content/Context;Landroid/content/AttributionSource;)V

    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    .line 860
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 861
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object p1

    .line 862
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->startListening(Lcom/android/server/companion/virtual/GenericWindowPolicyController;Landroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 865
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

.method public onLockdownChanged(Z)V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPowerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 511
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLockdownActive:Z

    if-eq p1, v1, :cond_1

    .line 512
    iput-boolean p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLockdownActive:Z

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    .line 514
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->goToSleepInternal(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 515
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mRequestedToBeAwake:Z

    if-eqz p1, :cond_1

    .line 516
    const-string p1, "android.server.companion.virtual:LOCKDOWN_ENDED"

    const/16 v1, 0xb

    invoke-virtual {p0, v1, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->wakeUpInternal(ILjava/lang/String;)V

    .line 520
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onRunningAppsChanged(Landroid/util/ArraySet;)V
    .locals 1

    .line 840
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mCameraAccessController:Lcom/android/server/companion/virtual/CameraAccessController;

    if-eqz v0, :cond_0

    .line 841
    invoke-virtual {v0, p1}, Lcom/android/server/companion/virtual/CameraAccessController;->blockCameraAccessIfNeeded(Ljava/util/Set;)V

    .line 843
    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mRunningAppsChangedCallback:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public onVirtualDisplayCreated(ILandroid/hardware/display/IVirtualDisplayCallback;Landroid/window/DisplayWindowPolicyController;)V
    .locals 10

    .line 1590
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1591
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayIdToMirror(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v9, v3

    goto :goto_0

    :cond_0
    move v9, v2

    .line 1592
    :goto_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1593
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->flags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    move v8, v3

    goto :goto_1

    :cond_1
    move v8, v2

    .line 1596
    :goto_1
    move-object v6, p3

    check-cast v6, Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    .line 1597
    invoke-virtual {v6, p1, v9}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->setDisplayId(IZ)V

    if-eqz v8, :cond_2

    .line 1599
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->createWakeLockForDisplay(I)Landroid/os/PowerManager$WakeLock;

    move-result-object p3

    :goto_2
    move-object v7, p3

    goto :goto_3

    :cond_2
    const/4 p3, 0x0

    goto :goto_2

    .line 1600
    :goto_3
    iget-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1601
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1602
    const-string p0, "VirtualDeviceImpl"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Virtual device already has a virtual display with ID "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    monitor-exit p3

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    .line 1605
    :cond_3
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    move-object v5, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;-><init>(Landroid/hardware/display/IVirtualDisplayCallback;Lcom/android/server/companion/virtual/GenericWindowPolicyController;Landroid/os/PowerManager$WakeLock;ZZ)V

    invoke-virtual {p0, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1607
    monitor-exit p3

    return-void

    :goto_4
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onVirtualDisplayRemoved(I)V
    .locals 4

    .line 1623
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1624
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 1625
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 1628
    const-string v0, "VirtualDeviceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Virtual device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t have a virtual display with ID "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1633
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1635
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->releaseOwnedVirtualDisplayResources(Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1637
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1638
    throw p0

    :catchall_1
    move-exception p0

    .line 1625
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public playSoundEffect(I)V
    .locals 1

    .line 1823
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    invoke-interface {p0, p1}, Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;->onPlaySoundEffect(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1825
    const-string p1, "VirtualDeviceImpl"

    const-string v0, "Unable to invoke sound effect listener"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public registerIntentInterceptor(Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;Landroid/content/IntentFilter;)V
    .locals 1

    .line 1312
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1313
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1314
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1315
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mIntentInterceptors:Ljava/util/Map;

    monitor-enter v0

    .line 1316
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mIntentInterceptors:Ljava/util/Map;

    invoke-interface {p1}, Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V
    .locals 1

    .line 1333
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1334
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1335
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    if-eqz v0, :cond_0

    .line 1338
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->registerCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;Landroid/content/AttributionSource;)V

    return-void

    .line 1336
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Virtual camera controller is not available"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final releaseOwnedVirtualDisplayResources(Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;)V
    .locals 0

    .line 1717
    invoke-virtual {p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->releaseWakeLock()V

    .line 1718
    invoke-virtual {p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->unregisterRunningAppsChangedListener(Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;)V

    return-void
.end method

.method public removeActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V
    .locals 4

    .line 726
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 727
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getDisplayId()I

    move-result v0

    .line 728
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, -0x1

    .line 733
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    if-eq v0, v2, :cond_1

    .line 735
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkDisplayOwnedByVirtualDeviceLocked(I)V

    .line 736
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 737
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object p0

    .line 738
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->removeActivityPolicyExemption(Landroid/content/ComponentName;)V

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 739
    :cond_0
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 740
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object p0

    .line 741
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->removeActivityPolicyExemption(Ljava/lang/String;)V

    goto :goto_2

    .line 744
    :cond_1
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyExemptions:Ljava/util/Set;

    .line 745
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 746
    :goto_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 747
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v0

    .line 748
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->removeActivityPolicyExemption(Landroid/content/ComponentName;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 750
    :cond_2
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyPackageExemptions:Ljava/util/Set;

    .line 751
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 752
    :goto_1
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 753
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v0

    .line 754
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->removeActivityPolicyExemption(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 758
    :cond_3
    :goto_2
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sendButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseButtonEvent;)Z
    .locals 2

    .line 1148
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1149
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1151
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseButtonEvent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1153
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1154
    throw p0
.end method

.method public sendDpadKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z
    .locals 2

    .line 1126
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1127
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1129
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendDpadKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1131
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1132
    throw p0
.end method

.method public sendKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z
    .locals 2

    .line 1137
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1138
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1140
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1142
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1143
    throw p0
.end method

.method public final sendPendingIntent(ILandroid/app/PendingIntent;)V
    .locals 9

    .line 763
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object p1

    const/4 v0, 0x3

    .line 764
    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 766
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    .line 773
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    .line 766
    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendRelativeEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseRelativeEvent;)Z
    .locals 2

    .line 1170
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1171
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1173
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendRelativeEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseRelativeEvent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1176
    throw p0
.end method

.method public sendRotaryEncoderScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;)Z
    .locals 2

    .line 1231
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1234
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendRotaryEncoderScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1236
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1237
    throw p0
.end method

.method public sendScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseScrollEvent;)Z
    .locals 2

    .line 1181
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1182
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1184
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseScrollEvent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1186
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1187
    throw p0
.end method

.method public sendSensorAdditionalInfo(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;)Z
    .locals 2

    .line 1300
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1301
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1303
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/SensorController;->sendSensorAdditionalInfo(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1305
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1306
    throw p0
.end method

.method public sendSensorEvent(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorEvent;)Z
    .locals 2

    .line 1288
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1289
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1291
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/SensorController;->sendSensorEvent(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorEvent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1293
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1294
    throw p0
.end method

.method public sendStylusButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusButtonEvent;)Z
    .locals 2

    .line 1217
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1218
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1219
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1220
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1222
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendStylusButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusButtonEvent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1224
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1225
    throw p0
.end method

.method public sendStylusMotionEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusMotionEvent;)Z
    .locals 2

    .line 1203
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1205
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1206
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1208
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendStylusMotionEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusMotionEvent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1210
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1211
    throw p0
.end method

.method public sendTouchEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchEvent;)Z
    .locals 2

    .line 1159
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1160
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1162
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendTouchEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchEvent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1164
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1165
    throw p0
.end method

.method public setDevicePolicy(II)V
    .locals 5

    .line 882
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 933
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 934
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 938
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Device policy "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot be changed at runtime. "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-ne p2, v2, :cond_3

    .line 913
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ADD_TRUSTED_DISPLAY"

    .line 914
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 916
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires ADD_TRUSTED_DISPLAY permission to set a custom clipboard policy."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 919
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 920
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 921
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 922
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isTrusted()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isMirror()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 923
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "All displays must be trusted for devices with custom clipboard policy."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 927
    :cond_6
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 928
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 899
    :cond_7
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 900
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDevicePolicy(I)I

    move-result v3

    if-eq v3, p2, :cond_8

    .line 901
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyExemptions:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 902
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyPackageExemptions:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_7

    .line 904
    :cond_8
    :goto_4
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    move p1, v1

    .line 905
    :goto_5
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge p1, v3, :cond_a

    .line 906
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v3

    if-nez p2, :cond_9

    move v4, v2

    goto :goto_6

    :cond_9
    move v4, v1

    .line 907
    :goto_6
    invoke-virtual {v3, v4}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->setActivityLaunchDefaultAllowed(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 910
    :cond_a
    monitor-exit v0

    return-void

    :goto_7
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    .line 886
    :cond_b
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 887
    :try_start_3
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    move p1, v1

    .line 888
    :goto_8
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge p1, v3, :cond_e

    .line 889
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 890
    invoke-virtual {v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isTrusted()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 891
    invoke-virtual {v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v3

    if-nez p2, :cond_c

    move v4, v2

    goto :goto_9

    :cond_c
    move v4, v1

    .line 892
    :goto_9
    invoke-virtual {v3, v4}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->setShowInHostDeviceRecents(Z)V

    goto :goto_a

    :catchall_3
    move-exception p0

    goto :goto_b

    :cond_d
    :goto_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 896
    :cond_e
    monitor-exit v0

    return-void

    :goto_b
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p0
.end method

.method public setDevicePolicyForDisplay(III)V
    .locals 4

    .line 947
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 951
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 952
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkDisplayOwnedByVirtualDeviceLocked(I)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 962
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object p0

    if-nez p3, :cond_0

    move v2, v3

    .line 963
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->setActivityLaunchDefaultAllowed(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 966
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Device policy "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " cannot be changed for a specific display. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 955
    :cond_2
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 956
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isTrusted()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 957
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object p0

    if-nez p3, :cond_3

    move v2, v3

    .line 958
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->setShowInHostDeviceRecents(Z)V

    .line 969
    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setDisplayImePolicy(II)V
    .locals 2

    .line 1262
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1263
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1264
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkDisplayOwnedByVirtualDeviceLocked(I)V

    .line 1265
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1266
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1268
    :try_start_1
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->setDisplayImePolicy(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1270
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1271
    throw p0

    :catchall_1
    move-exception p0

    .line 1265
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public setListeners(Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;)V
    .locals 0

    .line 576
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    .line 577
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    return-void
.end method

.method public setShowPointerIcon(Z)V
    .locals 6

    .line 1242
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1243
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1245
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1246
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    const/4 p1, 0x0

    .line 1247
    :goto_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge p1, v3, :cond_2

    .line 1248
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 1249
    invoke-virtual {v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isTrusted()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isMirror()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1250
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    iget-boolean v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 1251
    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1250
    invoke-virtual {v3, v4, v5}, Lcom/android/server/companion/virtual/InputController;->setShowPointerIcon(ZI)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1254
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1256
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1254
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 1256
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1257
    throw p0
.end method

.method public final shouldShowBlockedActivityDialog(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 0

    .line 1545
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x6

    .line 1554
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDevicePolicy(I)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return p2
.end method

.method public showToastWhereUidIsRunning(IIILandroid/os/Looper;)V
    .locals 1

    .line 1776
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->showToastWhereUidIsRunning(ILjava/lang/String;ILandroid/os/Looper;)V

    return-void
.end method

.method public showToastWhereUidIsRunning(ILjava/lang/String;ILandroid/os/Looper;)V
    .locals 4

    .line 1784
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDisplayIdsWhereUidIsRunning(I)Landroid/util/IntArray;

    move-result-object p1

    .line 1785
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1788
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    .line 1789
    :goto_0
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1790
    invoke-virtual {p1, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1791
    invoke-virtual {v2}, Landroid/view/Display;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1792
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p4, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 1793
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public unregisterInputDevice(Landroid/os/IBinder;)V
    .locals 2

    .line 1104
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1105
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1107
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/InputController;->unregisterInputDevice(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1109
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1110
    throw p0
.end method

.method public unregisterIntentInterceptor(Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;)V
    .locals 1

    .line 1323
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1324
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1325
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mIntentInterceptors:Ljava/util/Map;

    monitor-enter v0

    .line 1326
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mIntentInterceptors:Ljava/util/Map;

    invoke-interface {p1}, Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V
    .locals 0

    .line 1344
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 1345
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1346
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    if-eqz p0, :cond_0

    .line 1349
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->unregisterCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V

    return-void

    .line 1347
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Virtual camera controller is not available"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public wakeUp()V
    .locals 4

    .line 633
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    .line 634
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPowerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 635
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mRequestedToBeAwake:Z

    .line 636
    iget-boolean v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLockdownActive:Z

    if-eqz v2, :cond_0

    .line 637
    const-string p0, "VirtualDeviceImpl"

    const-string v1, "Cannot wake up device during lockdown."

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 640
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 643
    :try_start_1
    const-string v0, "android.server.companion.virtual:DEVICE_ON"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->wakeUpInternal(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 646
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 647
    throw p0

    .line 640
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public wakeUpInternal(ILjava/lang/String;)V
    .locals 8

    .line 1692
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1693
    new-instance v6, Landroid/util/IntArray;

    invoke-direct {v6}, Landroid/util/IntArray;-><init>()V

    .line 1694
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    move v4, v0

    .line 1695
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1696
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 1697
    invoke-virtual {v5}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isTrusted()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->isMirror()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 1700
    :cond_0
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1701
    invoke-virtual {v6, v5}, Landroid/util/IntArray;->add(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1703
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v0

    .line 1704
    :goto_2
    invoke-virtual {v6}, Landroid/util/IntArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 1705
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6, v7}, Landroid/util/IntArray;->get(I)I

    move-result v5

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    return-void

    .line 1703
    :goto_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
