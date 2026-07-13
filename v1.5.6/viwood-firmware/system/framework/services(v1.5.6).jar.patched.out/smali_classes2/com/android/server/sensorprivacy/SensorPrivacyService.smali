.class public final Lcom/android/server/sensorprivacy/SensorPrivacyService;
.super Lcom/android/server/SystemService;
.source "SensorPrivacyService.java"


# static fields
.field public static final ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "SensorPrivacyService"


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

.field public final mAppOpsRestrictionToken:Landroid/os/IBinder;

.field public mCallStateHelper:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

.field public mCameraPrivacyAllowlist:Ljava/util/List;

.field public mCameraPrivacyLightController:Lcom/android/server/sensorprivacy/CameraPrivacyLightController;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUser:I

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mSensorPrivacyManagerInternal:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;

.field public final mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActivityManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/ActivityManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mActivityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/ActivityManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityTaskManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/ActivityTaskManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppOpsManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/AppOpsManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppOpsManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/AppOpsManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppOpsRestrictionToken(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/os/IBinder;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsRestrictionToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallStateHelper(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCallStateHelper:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKeyguardManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/KeyguardManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/NotificationManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/pm/PackageManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSensorPrivacyManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyManagerInternal:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSensorPrivacyServiceImpl(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTelephonyManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/os/UserManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mforAllUsers(Lcom/android/server/sensorprivacy/SensorPrivacyService;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->forAllUsers(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetACTION_DISABLE_TOGGLE_SENSOR_PRIVACY()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 164
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".action.disable_sensor_privacy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 206
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 194
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsRestrictionToken:Landroid/os/IBinder;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCameraPrivacyAllowlist:Ljava/util/List;

    const/16 v0, -0x2710

    .line 203
    iput v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 208
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 209
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 210
    const-class v0, Landroid/app/AppOpsManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManagerInternal;

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    .line 211
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 212
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mActivityManager:Landroid/app/ActivityManager;

    .line 213
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 214
    const-class v0, Landroid/app/ActivityTaskManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityTaskManager;

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 215
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 216
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 217
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 218
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mUserManager:Landroid/os/UserManager;

    .line 219
    new-instance p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-direct {p1, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;)V

    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 220
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/SystemConfig;->getCameraPrivacyAllowlist()Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 221
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCameraPrivacyAllowlist:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getCurrentTimeMillis()J
    .locals 2

    .line 2100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final forAllUsers(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V
    .locals 2

    .line 1904
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object p0

    const/4 v0, 0x0

    .line 1905
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1906
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 236
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 237
    new-instance p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    invoke-direct {p1, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;)V

    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCallStateHelper:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    .line 238
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$mregisterSettingsObserver(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;)V

    return-void

    :cond_0
    const/16 v0, 0x226

    if-ne p1, v0, :cond_1

    .line 240
    new-instance p1, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;

    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCameraPrivacyLightController:Lcom/android/server/sensorprivacy/CameraPrivacyLightController;

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 227
    const-string/jumbo v0, "sensor_privacy"

    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 228
    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;Lcom/android/server/sensorprivacy/SensorPrivacyService-IA;)V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyManagerInternal:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;

    .line 229
    const-class v1, Landroid/hardware/SensorPrivacyManagerInternal;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 246
    iget v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 247
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    iput v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 248
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, v1, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$muserSwitching(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;II)V

    :cond_0
    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 254
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    iput v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 255
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$muserSwitching(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;II)V

    return-void
.end method
