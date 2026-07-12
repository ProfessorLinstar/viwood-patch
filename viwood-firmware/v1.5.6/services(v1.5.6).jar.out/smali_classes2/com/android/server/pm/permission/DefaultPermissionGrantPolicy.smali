.class public final Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicy.java"


# static fields
.field public static final ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;

.field public static final ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

.field public static final CALENDAR_PERMISSIONS:Ljava/util/Set;

.field public static final CALL_LOG_PERMISSIONS:Ljava/util/Set;

.field public static final CAMERA_PERMISSIONS:Ljava/util/Set;

.field public static final COARSE_BACKGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

.field public static final CONTACTS_PERMISSIONS:Ljava/util/Set;

.field public static final FINE_LOCATION_PERMISSIONS:Ljava/util/Set;

.field public static final FOREGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

.field public static final MICROPHONE_PERMISSIONS:Ljava/util/Set;

.field public static final NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

.field public static final NOTIFICATION_PERMISSIONS:Ljava/util/Set;

.field public static final PHONE_PERMISSIONS:Ljava/util/Set;

.field public static final SENSORS_PERMISSIONS:Ljava/util/Set;

.field public static final SMS_PERMISSIONS:Ljava/util/Set;

.field public static final STORAGE_PERMISSIONS:Ljava/util/Set;


# instance fields
.field public final NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

.field public final mContext:Landroid/content/Context;

.field public mDialerAppPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

.field public mGrantExceptions:Landroid/util/ArrayMap;

.field public final mHandler:Landroid/os/Handler;

.field public mLocationExtraPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

.field public mLocationPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

.field public final mLock:Ljava/lang/Object;

.field public final mServiceInternal:Landroid/content/pm/PackageManagerInternal;

.field public mSimCallManagerPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

.field public mSmsAppPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

.field public mSyncAdapterPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$SyncAdapterPackagesProvider;

.field public mUseOpenWifiAppPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

.field public mVoiceInteractionPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;


# direct methods
.method public static synthetic $r8$lambda$Q4LzWikX6zxK3xvemQsgFNMUZL4(I)[Ljava/lang/String;
    .locals 0

    .line 1385
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetNO_PM_CACHE(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGrantExceptions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceInternal(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/content/pm/PackageManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmGrantExceptions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/util/ArrayMap;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreadDefaultPermissionExceptionsLocked(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->readDefaultPermissionExceptionsLocked(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 135
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 139
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    const-string v1, "android.permission.CALL_PHONE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    const-string v2, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    const-string v3, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    const-string v3, "android.permission.USE_SIP"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    const-string v3, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 150
    const-string v3, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    const-string v3, "android.permission.WRITE_CONTACTS"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    const-string v3, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALL_LOG_PERMISSIONS:Ljava/util/Set;

    .line 157
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 164
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    const-string v3, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->FOREGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 171
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_BACKGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 177
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->FINE_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 183
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;

    .line 188
    const-string v1, "android.permission.ACTIVITY_RECOGNITION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    .line 193
    const-string v1, "android.permission.READ_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    const-string v1, "android.permission.WRITE_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    .line 199
    const-string v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 201
    const-string v1, "android.permission.READ_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    const-string v1, "android.permission.RECEIVE_MMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    const-string v1, "android.permission.READ_CELL_BROADCASTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    .line 209
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    .line 214
    const-string v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    .line 219
    const-string v1, "android.permission.BODY_SENSORS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    const-string v1, "android.permission.BODY_SENSORS_BACKGROUND"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    const-string v1, "android.permission.health.READ_HEART_RATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    const-string v1, "android.permission.health.READ_HEALTH_DATA_IN_BACKGROUND"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 230
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 231
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    const-string v1, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 233
    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 235
    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    const-string v1, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    .line 241
    const-string v1, "android.permission.BLUETOOTH_ADVERTISE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    const-string v1, "android.permission.BLUETOOTH_SCAN"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    const-string v1, "android.permission.UWB_RANGING"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    const-string v1, "android.permission.NEARBY_WIFI_DEVICES"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    const-string v1, "android.permission.RANGING"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    .line 251
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    .line 275
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    .line 342
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 343
    new-instance p1, Lcom/android/server/ServiceThread;

    const/16 v0, 0xa

    const/4 v1, 0x1

    const-string v2, "DefaultPermGrantPolicy"

    invoke-direct {p1, v2, v0, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 345
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 346
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$2;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$2;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    .line 358
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    return-void
.end method

.method public static doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z
    .locals 1

    .line 1750
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x16

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final getDefaultCaptivePortalLoginPackage()Ljava/lang/String;
    .locals 1

    .line 1046
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    const v0, 0x1040235

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultCompanionDeviceManagerPackage()Ljava/lang/String;
    .locals 1

    .line 1054
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    const v0, 0x104021e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultDockManagerPackage()Ljava/lang/String;
    .locals 1

    .line 1050
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    const v0, 0x1040242

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultPermissionFiles()[Ljava/io/File;
    .locals 3

    .line 1572
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1573
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "etc/default-permissions"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1574
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1575
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1577
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1578
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1579
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1581
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1582
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1583
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1585
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1586
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1587
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1589
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1590
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1591
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1593
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1594
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1595
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1597
    :cond_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/io/File;

    return-object p0
.end method

.method public final getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1282
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v0, 0xc2000

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1285
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDefaultSearchSelectorPackage()Ljava/lang/String;
    .locals 1

    .line 1042
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    const v0, 0x1040253

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;
    .locals 2

    .line 1223
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0xc2000

    invoke-virtual {v0, p2, v1, p3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 1225
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1228
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManagerInternal;->isResolveActivityComponent(Landroid/content/pm/ComponentInfo;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p3

    .line 1231
    :cond_1
    iget-object p0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1232
    invoke-virtual {p1, p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p0

    :cond_2
    :goto_0
    return-object p3
.end method

.method public final getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1218
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1037
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 1037
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultSystemHandlerServicePackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;
    .locals 3

    .line 1242
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v0, 0xc2000

    invoke-virtual {p0, p2, v0, p3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    const/4 p2, 0x0

    if-nez p0, :cond_0

    return-object p2

    .line 1247
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 1249
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1250
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1251
    invoke-virtual {p1, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public final getDefaultSystemHandlerServicePackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1237
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getHeadlessSyncAdapterPackages(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;[Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 7

    .line 1260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1262
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1264
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    .line 1265
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1267
    iget-object v5, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const v6, 0xc2000

    invoke-virtual {v5, v1, v6, p3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 1273
    :cond_0
    invoke-virtual {p1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1274
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final getKnownPackages(II)[Ljava/lang/String;
    .locals 0

    .line 1068
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final grantDefaultPermissionExceptions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V
    .locals 14

    .line 1530
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1532
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1537
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    if-nez v3, :cond_0

    .line 1538
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->readDefaultPermissionExceptionsLocked(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;)Landroid/util/ArrayMap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 1540
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1543
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v9, 0x0

    const/4 v2, 0x0

    move v10, v9

    :goto_1
    if-ge v10, v8, :cond_4

    .line 1545
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1546
    invoke-virtual {p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1547
    iget-object v4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/util/List;

    .line 1548
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    move v13, v9

    :goto_2
    if-ge v13, v12, :cond_3

    .line 1550
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;

    .line 1551
    iget-object v5, v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isPermissionDangerous(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1552
    const-string v5, "DefaultPermGrantPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " which isn\'t dangerous"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    goto :goto_4

    :cond_1
    if-nez v2, :cond_2

    .line 1557
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    goto :goto_3

    .line 1559
    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1561
    :goto_3
    iget-object v5, v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1564
    iget-boolean v5, v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->fixed:Z

    iget-boolean v4, v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->whitelisted:Z

    const/4 v6, 0x1

    move-object v0, v3

    move-object v3, v2

    move-object v2, v0

    move v0, v5

    move v5, v4

    move v4, v0

    move-object v0, p0

    move-object v1, p1

    move/from16 v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V

    move-object v0, v2

    move-object v2, v3

    :goto_4
    add-int/lit8 v13, v13, 0x1

    move-object v3, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    return-void

    .line 1540
    :goto_5
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public grantDefaultPermissions(I)V
    .locals 2

    .line 411
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy-IA;)V

    .line 413
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSysComponentsAndPrivApps(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;I)V

    .line 414
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultSystemHandlerPermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V

    .line 415
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSignatureAppsNotificationPermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V

    .line 416
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionExceptions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V

    .line 417
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissionsForWiskyPresetPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V

    .line 418
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissionsForWiskyWhiteListPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V

    .line 420
    invoke-virtual {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->apply()V

    return-void
.end method

.method public grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V
    .locals 4

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to active LUI app for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/util/Set;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    return-void
.end method

.method public grantDefaultPermissionsToCarrierServiceApp(Ljava/lang/String;I)V
    .locals 9

    .line 1210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Grant permissions to Carrier Service app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    const/4 v0, 0x1

    new-array v8, v0, [Ljava/util/Set;

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v8, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZZ[Ljava/util/Set;)V

    return-void
.end method

.method public final grantDefaultPermissionsToDefaultSimCallManager(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V
    .locals 8

    if-nez p2, :cond_0

    return-void

    .line 1122
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to sim call manager for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 1123
    new-array v7, v0, [Ljava/util/Set;

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v7, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v7, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZZ[Ljava/util/Set;)V

    return-void
.end method

.method public grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V
    .locals 1

    .line 1114
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManager(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    return-void
.end method

.method public final grantDefaultPermissionsToDefaultSystemDialerApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V
    .locals 5

    if-nez p2, :cond_0

    goto :goto_1

    .line 1076
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 1077
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 1079
    new-array v0, v1, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v0, v2

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v0, v3

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    goto :goto_0

    .line 1082
    :cond_1
    new-array v0, v3, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v0, v2

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    :goto_0
    const/4 v0, 0x5

    .line 1084
    new-array v0, v0, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v0, v2

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v0, v3

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v0, v1

    const/4 v1, 0x3

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v0, v1

    const/4 v1, 0x4

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v0, v1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 1087
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 1088
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1090
    new-array v0, v3, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final grantDefaultPermissionsToDefaultSystemSimCallManager(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V
    .locals 1

    .line 1129
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManager(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final grantDefaultPermissionsToDefaultSystemSmsApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x7

    .line 1096
    new-array v0, v0, [Ljava/util/Set;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    return-void
.end method

.method public final grantDefaultPermissionsToDefaultSystemUseOpenWifiApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x1

    .line 1104
    new-array v0, v0, [Ljava/util/Set;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    return-void
.end method

.method public grantDefaultPermissionsToDefaultUseOpenWifiApp(Ljava/lang/String;I)V
    .locals 4

    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to default Use Open WiFi app for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Set;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantIgnoringSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    return-void
.end method

.method public grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V
    .locals 8

    .line 1135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to enabled carrier apps for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    goto :goto_1

    .line 1139
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 1140
    iget-object v4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v1

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v3, p2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V
    .locals 8

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to enabled ImsServices for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    goto :goto_1

    .line 1150
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 1151
    iget-object v4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v1

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v3, p2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V
    .locals 8

    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to enabled data services for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    goto :goto_1

    .line 1163
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 1166
    iget-object v4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v1

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v3, p2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final grantDefaultSystemHandlerPermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    .line 641
    const-string v2, "DefaultPermGrantPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Granting permissions to default platform handlers for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 653
    :try_start_0
    iget-object v3, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 654
    iget-object v4, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationExtraPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 655
    iget-object v6, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 656
    iget-object v7, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 657
    iget-object v8, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 658
    iget-object v9, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 659
    iget-object v10, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mUseOpenWifiAppPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 660
    iget-object v11, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$SyncAdapterPackagesProvider;

    .line 661
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 664
    invoke-interface {v6, v5}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v6

    move-object v12, v6

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 666
    invoke-interface {v3, v5}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    if-eqz v4, :cond_2

    .line 668
    invoke-interface {v4, v5}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    :goto_2
    if-eqz v7, :cond_3

    .line 670
    invoke-interface {v7, v5}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    if-eqz v8, :cond_4

    .line 672
    invoke-interface {v8, v5}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    if-eqz v9, :cond_5

    .line 674
    invoke-interface {v9, v5}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    :goto_5
    if-eqz v10, :cond_6

    .line 676
    invoke-interface {v10, v5}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_6
    const/4 v7, 0x0

    :goto_6
    if-eqz v11, :cond_7

    .line 678
    const-string v8, "com.android.contacts"

    invoke-interface {v11, v8, v5}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    :cond_7
    const/4 v8, 0x0

    :goto_7
    if-eqz v11, :cond_8

    .line 680
    const-string v9, "com.android.calendar"

    invoke-interface {v11, v9, v5}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    goto :goto_8

    :cond_8
    const/4 v9, 0x0

    .line 683
    :goto_8
    iget-object v10, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 684
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v15, v11, [Ljava/util/Set;

    sget-object v16, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    move/from16 v17, v11

    const/4 v11, 0x0

    aput-object v16, v15, v11

    .line 683
    invoke-virtual {v0, v1, v10, v5, v15}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    const/4 v10, 0x2

    .line 689
    invoke-virtual {v0, v10, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackages(II)[Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    new-array v2, v10, [Ljava/util/Set;

    sget-object v18, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v18, v2, v11

    aput-object v16, v2, v17

    .line 688
    invoke-virtual {v0, v1, v15, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    const/4 v15, 0x4

    .line 694
    invoke-virtual {v0, v15, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackages(II)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move/from16 v20, v11

    move/from16 v19, v15

    move/from16 v15, v17

    .line 696
    new-array v11, v15, [Ljava/util/Set;

    aput-object v18, v11, v20

    invoke-virtual {v0, v1, v2, v5, v11}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    const/4 v11, 0x3

    move/from16 v21, v10

    .line 697
    new-array v10, v11, [Ljava/util/Set;

    sget-object v17, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v17, v10, v20

    sget-object v22, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v22, v10, v15

    aput-object v16, v10, v21

    invoke-virtual {v0, v1, v2, v5, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 701
    invoke-virtual {v0, v15, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackages(II)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v10, 0x5

    move/from16 v22, v11

    .line 703
    new-array v11, v10, [Ljava/util/Set;

    aput-object v17, v11, v20

    sget-object v17, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v17, v11, v15

    sget-object v17, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v17, v11, v21

    sget-object v17, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    aput-object v17, v11, v22

    sget-object v23, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    aput-object v23, v11, v19

    invoke-virtual {v0, v1, v2, v5, v11}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 706
    new-array v11, v15, [Ljava/util/Set;

    aput-object v16, v11, v20

    invoke-virtual {v0, v1, v2, v5, v11}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 710
    invoke-virtual {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSearchSelectorPackage()Ljava/lang/String;

    move-result-object v2

    new-array v11, v15, [Ljava/util/Set;

    aput-object v16, v11, v20

    invoke-virtual {v0, v1, v2, v5, v11}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 714
    invoke-virtual {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultCaptivePortalLoginPackage()Ljava/lang/String;

    move-result-object v2

    new-array v11, v15, [Ljava/util/Set;

    aput-object v16, v11, v20

    invoke-virtual {v0, v1, v2, v5, v11}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 718
    invoke-virtual {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultDockManagerPackage()Ljava/lang/String;

    move-result-object v2

    new-array v11, v15, [Ljava/util/Set;

    aput-object v16, v11, v20

    invoke-virtual {v0, v1, v2, v5, v11}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 722
    const-string v2, "android.media.action.IMAGE_CAPTURE"

    .line 723
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move/from16 v11, v22

    new-array v10, v11, [Ljava/util/Set;

    aput-object v17, v10, v20

    sget-object v11, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v11, v10, v15

    aput-object v18, v10, v21

    .line 722
    invoke-virtual {v0, v1, v2, v5, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 727
    const-string v2, "android.provider.MediaStore.RECORD_SOUND"

    .line 728
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v10, v15, [Ljava/util/Set;

    aput-object v11, v10, v20

    .line 727
    invoke-virtual {v0, v1, v2, v5, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 733
    const-string/jumbo v2, "media"

    .line 734
    invoke-virtual {v0, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move/from16 v10, v21

    new-array v11, v10, [Ljava/util/Set;

    aput-object v18, v11, v20

    aput-object v16, v11, v15

    .line 733
    invoke-virtual {v0, v1, v2, v5, v11}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 738
    const-string v2, "downloads"

    .line 739
    invoke-virtual {v0, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v11, v10, [Ljava/util/Set;

    aput-object v18, v11, v20

    aput-object v16, v11, v15

    .line 738
    invoke-virtual {v0, v1, v2, v5, v11}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 743
    const-string v2, "android.intent.action.VIEW_DOWNLOADS"

    .line 744
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v10, v15, [Ljava/util/Set;

    aput-object v18, v10, v20

    .line 743
    invoke-virtual {v0, v1, v2, v5, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 749
    const-string v2, "com.android.externalstorage.documents"

    .line 750
    invoke-virtual {v0, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v10, v15, [Ljava/util/Set;

    aput-object v18, v10, v20

    .line 749
    invoke-virtual {v0, v1, v2, v5, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 754
    const-string v2, "android.credentials.INSTALL"

    .line 755
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v10, v15, [Ljava/util/Set;

    aput-object v18, v10, v20

    .line 754
    invoke-virtual {v0, v1, v2, v5, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    if-nez v4, :cond_9

    .line 760
    const-string v2, "android.intent.action.DIAL"

    .line 761
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 762
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    goto :goto_a

    .line 764
    :cond_9
    array-length v2, v4

    move/from16 v10, v20

    :goto_9
    if-ge v10, v2, :cond_a

    aget-object v11, v4, v10

    .line 765
    invoke-virtual {v0, v1, v11, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_a
    :goto_a
    if-eqz v6, :cond_b

    .line 771
    array-length v2, v6

    move/from16 v4, v20

    :goto_b
    if-ge v4, v2, :cond_b

    aget-object v10, v6, v4

    .line 772
    invoke-virtual {v0, v1, v10, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSimCallManager(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_b
    if-eqz v7, :cond_c

    .line 779
    array-length v2, v7

    move/from16 v4, v20

    :goto_c
    if-ge v4, v2, :cond_c

    aget-object v6, v7, v4

    .line 780
    invoke-virtual {v0, v1, v6, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemUseOpenWifiApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_c
    if-nez v3, :cond_d

    .line 787
    const-string v2, "android.intent.category.APP_MESSAGING"

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 789
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    goto :goto_e

    .line 791
    :cond_d
    array-length v2, v3

    move/from16 v4, v20

    :goto_d
    if-ge v4, v2, :cond_e

    aget-object v6, v3, v4

    .line 792
    invoke-virtual {v0, v1, v6, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsApp(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 797
    :cond_e
    :goto_e
    const-string v2, "android.provider.Telephony.SMS_CB_RECEIVED"

    .line 798
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x3

    new-array v3, v11, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v20

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    const/4 v15, 0x1

    aput-object v6, v3, v15

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    const/16 v21, 0x2

    aput-object v6, v3, v21

    .line 797
    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 802
    const-string v2, "android.provider.Telephony.SMS_CARRIER_PROVISION"

    .line 803
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v15, [Ljava/util/Set;

    aput-object v4, v3, v20

    .line 802
    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 808
    const-string v2, "android.intent.category.APP_CALENDAR"

    .line 809
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x3

    new-array v3, v11, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v20

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v7, v3, v15

    const/4 v10, 0x2

    aput-object v6, v3, v10

    .line 808
    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 814
    const-string v2, "com.android.calendar"

    .line 815
    invoke-virtual {v0, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 816
    new-array v3, v10, [Ljava/util/Set;

    aput-object v7, v3, v20

    sget-object v10, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v10, v3, v15

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 818
    new-array v3, v15, [Ljava/util/Set;

    aput-object v4, v3, v20

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    if-eqz v9, :cond_f

    .line 824
    invoke-virtual {v0, v1, v9, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackages(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;[Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    new-array v3, v15, [Ljava/util/Set;

    aput-object v4, v3, v20

    .line 823
    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionToEachSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/util/ArrayList;I[Ljava/util/Set;)V

    .line 829
    :cond_f
    const-string v2, "android.intent.category.APP_CONTACTS"

    .line 830
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v9, v3, [Ljava/util/Set;

    aput-object v7, v9, v20

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v9, v15

    .line 829
    invoke-virtual {v0, v1, v2, v5, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    if-eqz v8, :cond_10

    .line 837
    invoke-virtual {v0, v1, v8, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackages(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;[Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    new-array v8, v15, [Ljava/util/Set;

    aput-object v7, v8, v20

    .line 836
    invoke-virtual {v0, v1, v2, v5, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionToEachSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/util/ArrayList;I[Ljava/util/Set;)V

    .line 842
    :cond_10
    const-string v2, "com.android.contacts"

    .line 843
    invoke-virtual {v0, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x3

    .line 844
    new-array v8, v11, [Ljava/util/Set;

    aput-object v7, v8, v20

    aput-object v3, v8, v15

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALL_LOG_PERMISSIONS:Ljava/util/Set;

    const/4 v9, 0x2

    aput-object v3, v8, v9

    invoke-virtual {v0, v1, v2, v5, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 846
    new-array v3, v15, [Ljava/util/Set;

    aput-object v10, v3, v20

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 849
    const-string v2, "android.app.action.PROVISION_MANAGED_DEVICE"

    .line 850
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/util/Set;

    aput-object v7, v3, v20

    aput-object v6, v3, v15

    .line 849
    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 855
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.automotive"

    move/from16 v6, v20

    invoke-virtual {v2, v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 856
    const-string v2, "android.intent.category.APP_MAPS"

    .line 857
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v15, [Ljava/util/Set;

    sget-object v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->FOREGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v8, v3, v6

    .line 856
    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 863
    :cond_11
    const-string v2, "android.intent.category.APP_EMAIL"

    .line 864
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x2

    new-array v3, v10, [Ljava/util/Set;

    aput-object v7, v3, v6

    aput-object v4, v3, v15

    .line 863
    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    const/4 v2, 0x5

    .line 869
    invoke-virtual {v0, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackages(II)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_12

    .line 872
    const-string v2, "android.intent.category.APP_BROWSER"

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 874
    invoke-virtual {v1, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    const/4 v2, 0x0

    :cond_12
    const/4 v15, 0x1

    .line 878
    new-array v6, v15, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->FOREGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v20, 0x0

    aput-object v3, v6, v20

    const/4 v4, 0x0

    const/4 v5, 0x1

    move/from16 v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZZ[Ljava/util/Set;)V

    move v5, v3

    const/4 v6, 0x7

    const/16 v7, 0x8

    const/4 v8, 0x6

    if-eqz v12, :cond_13

    .line 883
    array-length v9, v12

    const/4 v10, 0x0

    :goto_f
    if-ge v10, v9, :cond_13

    aget-object v2, v12, v10

    .line 884
    new-array v3, v7, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v20, 0x0

    aput-object v4, v3, v20

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const/16 v17, 0x1

    aput-object v4, v3, v17

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v21, 0x2

    aput-object v4, v3, v21

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v22, 0x3

    aput-object v4, v3, v22

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v19

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_BACKGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v23, 0x5

    aput-object v4, v3, v23

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v8

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 888
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->FINE_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;Ljava/util/Set;ZI)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    .line 893
    :cond_13
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 895
    const-string v2, "android.search.action.GLOBAL_SEARCH"

    .line 896
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x3

    new-array v3, v11, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v20, 0x0

    aput-object v4, v3, v20

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v17, 0x1

    aput-object v4, v3, v17

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    const/16 v21, 0x2

    aput-object v4, v3, v21

    .line 895
    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 903
    :cond_14
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.RecognitionService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.DEFAULT"

    .line 904
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 906
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x1

    new-array v3, v15, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v20, 0x0

    aput-object v4, v3, v20

    .line 905
    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    if-eqz v13, :cond_15

    .line 911
    array-length v2, v13

    move/from16 v3, v20

    :goto_10
    if-ge v3, v2, :cond_15

    aget-object v4, v13, v3

    const/16 v9, 0xa

    .line 912
    new-array v9, v9, [Ljava/util/Set;

    sget-object v10, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v10, v9, v20

    sget-object v10, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const/16 v17, 0x1

    aput-object v10, v9, v17

    sget-object v10, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v21, 0x2

    aput-object v10, v9, v21

    sget-object v10, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v22, 0x3

    aput-object v10, v9, v22

    sget-object v10, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v10, v9, v19

    sget-object v10, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/16 v23, 0x5

    aput-object v10, v9, v23

    sget-object v10, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    aput-object v10, v9, v8

    sget-object v10, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v10, v9, v6

    sget-object v10, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    aput-object v10, v9, v7

    const/16 v10, 0x9

    sget-object v11, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    aput-object v11, v9, v10

    invoke-virtual {v0, v1, v4, v5, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    const/4 v10, 0x2

    .line 917
    new-array v9, v10, [Ljava/util/Set;

    sget-object v10, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v20, 0x0

    aput-object v10, v9, v20

    sget-object v10, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;

    const/16 v17, 0x1

    aput-object v10, v9, v17

    invoke-virtual {v0, v1, v4, v5, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    add-int/lit8 v3, v3, 0x1

    const/16 v20, 0x0

    goto :goto_10

    :cond_15
    if-eqz v14, :cond_16

    .line 923
    array-length v2, v14

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_16

    aget-object v4, v14, v3

    const/4 v10, 0x2

    .line 924
    new-array v6, v10, [Ljava/util/Set;

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v20, 0x0

    aput-object v7, v6, v20

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    const/4 v15, 0x1

    aput-object v7, v6, v15

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 926
    new-array v6, v15, [Ljava/util/Set;

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;

    aput-object v7, v6, v20

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 932
    :cond_16
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.DEFAULT"

    .line 933
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string v4, "foo.mp3"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 934
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "audio/mpeg"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 936
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x1

    new-array v3, v15, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v20, 0x0

    aput-object v6, v3, v20

    .line 935
    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 940
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    .line 941
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.category.LAUNCHER_APP"

    .line 942
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 944
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x2

    new-array v3, v10, [Ljava/util/Set;

    sget-object v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    sget-object v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    const/16 v17, 0x1

    aput-object v9, v3, v17

    .line 943
    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 948
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 951
    const-string v2, "android.intent.category.HOME_MAIN"

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x3

    .line 953
    new-array v3, v11, [Ljava/util/Set;

    sget-object v10, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v10, v3, v4

    sget-object v11, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v17, 0x1

    aput-object v11, v3, v17

    const/4 v11, 0x2

    aput-object v7, v3, v11

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 955
    new-array v3, v11, [Ljava/util/Set;

    sget-object v11, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v11, v3, v4

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v17

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 959
    iget-object v3, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111027f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 960
    const-string v3, "DefaultPermGrantPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Wear: Skipping permission grant for Default fitness tracker app : "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    const/16 v20, 0x0

    goto :goto_12

    .line 963
    :cond_17
    const-string v2, "com.android.fitness.TRACK"

    .line 964
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x1

    new-array v3, v15, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    const/16 v20, 0x0

    aput-object v4, v3, v20

    .line 963
    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 969
    :goto_12
    const-string v2, "android.search.action.GLOBAL_SEARCH"

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    .line 971
    new-array v3, v3, [Ljava/util/Set;

    aput-object v11, v3, v20

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v15

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    const/4 v11, 0x2

    aput-object v4, v3, v11

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_BACKGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v22, 0x3

    aput-object v4, v3, v22

    aput-object v10, v3, v19

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 974
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->FINE_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;Ljava/util/Set;ZI)V

    goto :goto_13

    :cond_18
    const/4 v11, 0x2

    .line 979
    :goto_13
    const-string v2, "com.android.printspooler"

    new-array v3, v11, [Ljava/util/Set;

    const/16 v20, 0x0

    aput-object v7, v3, v20

    const/4 v15, 0x1

    aput-object v9, v3, v15

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 983
    const-string v2, "android.telephony.action.EMERGENCY_ASSISTANCE"

    .line 984
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v11, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v20

    sget-object v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v9, v3, v15

    .line 983
    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 989
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "vnd.android.cursor.item/ndef_msg"

    .line 990
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 992
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x2

    new-array v3, v10, [Ljava/util/Set;

    aput-object v4, v3, v20

    aput-object v9, v3, v15

    .line 991
    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 996
    const-string v2, "android.os.storage.action.MANAGE_STORAGE"

    .line 997
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v15, [Ljava/util/Set;

    aput-object v6, v3, v20

    .line 996
    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 1003
    invoke-virtual {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultCompanionDeviceManagerPackage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v10, [Ljava/util/Set;

    aput-object v7, v3, v20

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v15

    .line 1002
    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 1007
    const-string v2, "android.intent.action.RINGTONE_PICKER"

    .line 1008
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v15, [Ljava/util/Set;

    aput-object v6, v3, v20

    .line 1007
    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 1014
    invoke-virtual {v0, v8, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackages(II)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move/from16 v6, v20

    :goto_14
    if-ge v6, v3, :cond_19

    aget-object v4, v2, v6

    const/4 v10, 0x2

    .line 1015
    new-array v7, v10, [Ljava/util/Set;

    sget-object v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_BACKGROUND_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v8, v7, v20

    sget-object v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/4 v15, 0x1

    aput-object v8, v7, v15

    invoke-virtual {v0, v1, v4, v5, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_19
    const/4 v15, 0x1

    .line 1021
    const-string v2, "com.android.sharedstoragebackup"

    new-array v3, v15, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v20

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 1025
    const-string v2, "com.android.bluetoothmidiservice"

    new-array v3, v15, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v20

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    .line 1030
    const-string v2, "android.adservices.AD_SERVICES_COMMON_SERVICE"

    .line 1031
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v15, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v20

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    return-void

    :catchall_0
    move-exception v0

    .line 661
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final varargs grantIgnoringSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    .line 587
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZZ[Ljava/util/Set;)V

    return-void
.end method

.method public final varargs grantPermissionToEachSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/util/ArrayList;I[Ljava/util/Set;)V
    .locals 3

    if-nez p2, :cond_0

    goto :goto_1

    .line 1061
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1063
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p1, v2, p3, p4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final varargs grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;IZZZ[Ljava/util/Set;)V
    .locals 11

    move-object/from16 v0, p7

    if-nez p2, :cond_0

    goto :goto_1

    .line 632
    :cond_0
    invoke-static {p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 633
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v6, v0, v2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v10, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    .line 634
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final varargs grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZZ[Ljava/util/Set;)V
    .locals 8

    .line 620
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;IZZZ[Ljava/util/Set;)V

    return-void
.end method

.method public final grantPermissionsToSysComponentsAndPrivApps(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;I)V
    .locals 7

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to platform components for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x2000b000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 545
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_1

    goto :goto_0

    .line 551
    :cond_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->addPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    .line 553
    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 554
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 555
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 558
    :cond_2
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissionsForSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;ILandroid/content/pm/PackageInfo;)V

    goto :goto_0

    .line 564
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_4

    .line 566
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 567
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 569
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 568
    invoke-virtual {p1, v0, v3, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->isGranted(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 571
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 570
    invoke-virtual {p1, v0, v3, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->isGranted(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 572
    invoke-virtual {p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    .line 579
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 576
    const-string v2, "android.permission.READ_PHONE_STATE"

    const/16 v4, 0x10

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final varargs grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V
    .locals 9

    .line 608
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 611
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;IZZZ[Ljava/util/Set;)V

    return-void
.end method

.method public final varargs grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 601
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    return-void
.end method

.method public final grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v7, p5

    .line 1292
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V

    return-void
.end method

.method public final grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v2, p3

    .line 1365
    invoke-static/range {p7 .. p7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    if-nez v3, :cond_0

    goto/16 :goto_9

    .line 1370
    :cond_0
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 1371
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_9

    .line 1377
    :cond_1
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 1379
    array-length v7, v4

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x0

    if-ge v9, v7, :cond_3

    .line 1381
    aget-object v11, v4, v9

    invoke-static {v5, v11}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1382
    aput-object v10, v4, v9

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1385
    :cond_3
    new-instance v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v4, v5}, Lcom/android/internal/util/ArrayUtils;->filterNotNull([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 1387
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1388
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p4, :cond_4

    const/16 v9, 0x30

    goto :goto_1

    :cond_4
    const/16 v9, 0x20

    .line 1396
    :goto_1
    iget-object v11, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    const-class v12, Landroid/permission/PermissionManager;

    .line 1397
    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/permission/PermissionManager;

    invoke-virtual {v11}, Landroid/permission/PermissionManager;->getSplitPermissions()Ljava/util/List;

    move-result-object v11

    .line 1398
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_6

    .line 1401
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/permission/PermissionManager$SplitPermissionInfo;

    if-eqz v5, :cond_5

    .line 1403
    iget v15, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1404
    invoke-virtual {v14}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v8

    if-ge v15, v8, :cond_5

    .line 1405
    invoke-virtual {v14}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1406
    invoke-virtual {v14}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_6
    if-nez p5, :cond_8

    if-eqz v5, :cond_8

    .line 1420
    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1421
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1422
    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1421
    invoke-virtual {v1, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1424
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto/16 :goto_9

    .line 1427
    :cond_7
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1428
    new-instance v10, Landroid/util/ArraySet;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v10, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1429
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 1434
    :cond_8
    array-length v8, v4

    .line 1438
    new-array v11, v8, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    :goto_3
    if-ge v2, v8, :cond_a

    .line 1442
    aget-object v13, v4, v2

    .line 1443
    invoke-virtual {v1, v13}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getBackgroundPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 1444
    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v14, v8, -0x1

    sub-int/2addr v14, v5

    .line 1447
    aput-object v13, v11, v14

    add-int/lit8 v5, v5, 0x1

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    const/4 v12, 0x0

    :goto_5
    if-ge v12, v8, :cond_14

    .line 1455
    aget-object v2, v11, v12

    if-eqz v10, :cond_b

    .line 1459
    invoke-interface {v10, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto/16 :goto_8

    .line 1463
    :cond_b
    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1464
    invoke-virtual {v1, v2, v3, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)I

    move-result v13

    if-eqz p4, :cond_c

    and-int/lit8 v4, v13, 0x10

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    move v14, v4

    goto :goto_6

    :cond_c
    const/4 v14, 0x0

    .line 1478
    :goto_6
    invoke-virtual {v0, v13}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isFixedOrUserSet(I)Z

    move-result v4

    if-eqz v4, :cond_d

    if-nez p5, :cond_d

    if-eqz v14, :cond_12

    :cond_d
    and-int/lit8 v4, v13, 0x4

    if-eqz v4, :cond_e

    goto :goto_8

    :cond_e
    and-int/lit16 v4, v13, 0x3800

    or-int/2addr v9, v4

    if-eqz p6, :cond_f

    .line 1491
    invoke-virtual {v1, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isPermissionRestricted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v4, 0x1000

    const/16 v5, 0x1000

    .line 1492
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    :cond_f
    if-eqz v14, :cond_10

    and-int/lit8 v5, v13, -0x11

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move v4, v13

    .line 1500
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    goto :goto_7

    :cond_10
    move-object/from16 v1, p1

    move-object/from16 v3, p2

    .line 1504
    :goto_7
    invoke-virtual {v1, v2, v3, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isGranted(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 1505
    invoke-virtual {v1, v2, v3, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->grantPermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V

    :cond_11
    or-int/lit8 v4, v9, 0x40

    move v5, v9

    .line 1510
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    :cond_12
    and-int/lit8 v1, v13, 0x20

    if-eqz v1, :cond_13

    and-int/lit8 v1, v13, 0x10

    if-eqz v1, :cond_13

    if-nez p4, :cond_13

    const/16 v4, 0x10

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    .line 1522
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    :cond_13
    :goto_8
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    goto :goto_5

    :cond_14
    :goto_9
    return-void
.end method

.method public final grantRuntimePermissionsForSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;ILandroid/content/pm/PackageInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 440
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissionsForSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;ILandroid/content/pm/PackageInfo;Ljava/util/Set;)V

    return-void
.end method

.method public final grantRuntimePermissionsForSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;ILandroid/content/pm/PackageInfo;Ljava/util/Set;)V
    .locals 7

    .line 445
    iget-object v0, p3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 448
    :cond_0
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 449
    iget-object v0, p3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 450
    invoke-virtual {p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz p4, :cond_1

    .line 452
    invoke-interface {p4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 455
    :cond_1
    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 456
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 459
    :cond_3
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    move-object v3, p3

    .line 460
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final grantRuntimePermissionsForWiskyPresetPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V
    .locals 11

    .line 466
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104017b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wiskyPresetApps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultPermGrantPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 470
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 471
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    .line 472
    invoke-virtual {p1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    :goto_1
    move-object v5, p0

    move-object v6, p1

    move v10, p2

    goto :goto_4

    .line 481
    :cond_1
    iget-object v4, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 482
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 485
    :cond_2
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 486
    array-length v5, v4

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_5

    aget-object v9, v4, v6

    .line 487
    invoke-virtual {p1, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object v10

    if-nez v10, :cond_3

    goto :goto_3

    .line 491
    :cond_3
    invoke-virtual {v10}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 492
    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 495
    :cond_5
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v9, 0x1

    move-object v5, p0

    move-object v6, p1

    move v10, p2

    .line 496
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move-object p0, v5

    move-object p1, v6

    move p2, v10

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final grantRuntimePermissionsForWiskyWhiteListPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V
    .locals 9

    .line 503
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x2000b000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 505
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/content/pm/PackageInfo;

    if-nez v5, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    iget-object v1, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 510
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 513
    :cond_1
    iget-object v3, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 514
    const-string v4, "com.viwoods."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 517
    :cond_2
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 518
    array-length v3, v1

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v7, v1, v4

    .line 519
    invoke-virtual {p1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object v8

    if-nez v8, :cond_3

    goto :goto_2

    .line 526
    :cond_3
    invoke-virtual {v8}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 527
    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 530
    :cond_5
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v7, 0x1

    move-object v3, p0

    move-object v4, p1

    move v8, p2

    .line 531
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    goto :goto_3

    :cond_6
    move-object v3, p0

    move-object v4, p1

    move v8, p2

    :goto_3
    move-object p0, v3

    move-object p1, v4

    move p2, v8

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final grantSignatureAppsNotificationPermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;I)V
    .locals 3

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting Notification permissions to platform signature apps for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x2000b000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 428
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    .line 429
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 430
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 433
    :cond_1
    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NOTIFICATION_PERMISSIONS:Ljava/util/Set;

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissionsForSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;ILandroid/content/pm/PackageInfo;Ljava/util/Set;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final varargs grantSystemFixedPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;I[Ljava/util/Set;)V
    .locals 6

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 594
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    return-void
.end method

.method public final isFixedOrUserSet(I)Z
    .locals 0

    .line 0
    const p0, 0x10017

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isSystemOrCertificateMatchingPackage(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .locals 2

    if-nez p2, :cond_0

    .line 1740
    iget-object p0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p0

    return p0

    .line 1741
    :cond_0
    const-string/jumbo v0, "platform"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1742
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->isPlatformSigned(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1744
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v0, ":"

    const-string v1, ""

    .line 1745
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;)[B

    move-result-object p2

    const/4 v0, 0x1

    .line 1744
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    move-result p0

    return p0
.end method

.method public final parse(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/Map;)V
    .locals 4

    .line 1634
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1636
    :cond_0
    :goto_0
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1637
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    :cond_1
    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 1641
    :cond_2
    const-string v1, "exceptions"

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1642
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parseExceptions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/Map;)V

    goto :goto_0

    .line 1644
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultPermGrantPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final parseExceptions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/Map;)V
    .locals 5

    .line 1652
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1654
    :cond_0
    :goto_0
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1655
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_8

    :cond_1
    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 1659
    :cond_2
    const-string v1, "exception"

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "DefaultPermGrantPolicy"

    if-eqz v1, :cond_7

    .line 1660
    const-string/jumbo v1, "package"

    const/4 v3, 0x0

    invoke-interface {p2, v3, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1661
    const-string v4, "cert"

    invoke-interface {p2, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1664
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_6

    .line 1666
    invoke-virtual {p1, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1669
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1674
    :cond_3
    invoke-virtual {p0, v4, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemOrCertificateMatchingPackage(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1675
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not system or certificate-matching package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1681
    :cond_4
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1682
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping non supporting runtime permissions package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1687
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1688
    invoke-interface {p3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    :cond_6
    invoke-virtual {p0, p2, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parsePermission(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1693
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown tag "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "under <exceptions>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public final parsePermission(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/List;)V
    .locals 5

    .line 1700
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result p0

    .line 1702
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1703
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, p0, :cond_6

    :cond_1
    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 1708
    :cond_2
    const-string/jumbo v0, "permission"

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "DefaultPermGrantPolicy"

    if-eqz v0, :cond_5

    .line 1709
    const-string/jumbo v0, "name"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1711
    const-string v0, "Mandatory name attribute missing for permission tag"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1718
    :cond_3
    invoke-static {}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getAconfigFlags()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v2

    invoke-virtual {v2, v3, p1, v1}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1720
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1724
    :cond_4
    const-string v1, "fixed"

    const/4 v2, 0x0

    .line 1725
    invoke-interface {p1, v3, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1726
    const-string/jumbo v4, "whitelisted"

    .line 1727
    invoke-interface {p1, v3, v4, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 1729
    new-instance v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;-><init>(Ljava/lang/String;ZZ)V

    .line 1731
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1733
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "under <exception>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final readDefaultPermissionExceptionsLocked(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;)Landroid/util/ArrayMap;
    .locals 9

    .line 1602
    invoke-virtual {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultPermissionFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1604
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    return-object p0

    .line 1607
    :cond_0
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1610
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    .line 1611
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "DefaultPermGrantPolicy"

    if-nez v5, :cond_1

    .line 1612
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Non-xml file "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1613
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " directory, ignoring"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1612
    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1616
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1617
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Default permissions file "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " cannot be read"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1620
    :cond_2
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1621
    :try_start_1
    invoke-static {v5}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v7

    .line 1622
    invoke-virtual {p0, p1, v7, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parse(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1623
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v5

    goto :goto_2

    :catchall_0
    move-exception v7

    .line 1620
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v7
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1624
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading default permissions file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-object v2
.end method

.method public revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V
    .locals 8

    .line 1173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Revoking permissions from disabled data services for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    goto :goto_2

    .line 1177
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v4, p1, v1

    .line 1178
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1179
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1180
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x1

    move-object v2, p0

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;Ljava/util/Set;ZI)V

    .line 1182
    iget-object v3, v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;Ljava/util/Set;ZI)V

    goto :goto_1

    :cond_1
    move-object v2, p0

    move v7, p2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object p0, v2

    move p2, v7

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V
    .locals 8

    .line 1195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Revoke permissions from LUI apps for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    goto :goto_2

    .line 1199
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v4, p1, v1

    .line 1200
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1201
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1202
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x1

    move-object v2, p0

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;Ljava/util/Set;ZI)V

    goto :goto_1

    :cond_1
    move-object v2, p0

    move v7, p2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object p0, v2

    move p2, v7

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public final revokeRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;Ljava/util/Set;ZI)V
    .locals 6

    .line 1298
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1299
    iget-object p0, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    .line 1302
    :cond_0
    new-instance p0, Landroid/util/ArraySet;

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1304
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 1306
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1310
    :cond_1
    invoke-static {p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 1311
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-virtual {p1, v1, v0, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)I

    move-result v0

    and-int/lit8 v3, v0, 0x20

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    if-nez p4, :cond_4

    goto :goto_0

    .line 1328
    :cond_4
    invoke-virtual {p1, v1, v2, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->revokePermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V

    const/16 v3, 0x20

    const/4 v4, 0x0

    move-object v0, p1

    .line 1338
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public scheduleReadDefaultPermissionExceptions()V
    .locals 1

    .line 537
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setDialerAppPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 389
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setLocationExtraPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationExtraPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 371
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setLocationPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 364
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setSimCallManagerPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 394
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 395
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setSmsAppPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 382
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 383
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setSyncAdapterPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$SyncAdapterPackagesProvider;)V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 406
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$SyncAdapterPackagesProvider;

    .line 407
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setUseOpenWifiAppPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 400
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mUseOpenWifiAppPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 401
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setVoiceInteractionPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 377
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
