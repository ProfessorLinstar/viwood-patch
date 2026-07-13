.class public Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
.super Ljava/lang/Object;
.source "PermissionManagerServiceImpl.java"

# interfaces
.implements Lcom/android/server/pm/permission/PermissionManagerServiceInterface;


# static fields
.field public static final BACKUP_TIMEOUT_MILLIS:J

.field public static final EMPTY_INT_ARRAY:[I

.field public static final FULLER_PERMISSION_MAP:Ljava/util/Map;

.field public static final LOG_TAG:Ljava/lang/String;

.field public static final NEARBY_DEVICES_PERMISSIONS:Ljava/util/List;

.field public static final NOTIFICATION_PERMISSIONS:Ljava/util/List;

.field public static final READ_MEDIA_AURAL_PERMISSIONS:Ljava/util/Set;

.field public static final READ_MEDIA_VISUAL_PERMISSIONS:Ljava/util/Set;

.field public static final STORAGE_PERMISSIONS:Ljava/util/List;


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

.field public final mGlobalGids:[I

.field public final mHandler:Landroid/os/Handler;

.field public final mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

.field public final mIsLeanback:Z

.field public final mLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

.field public final mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

.field public mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

.field public mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

.field public final mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field public mPrivappPermissionsViolations:Landroid/util/ArraySet;

.field public final mPrivilegedPermissionAllowlistSourcePackageNames:Landroid/util/ArraySet;

.field public final mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

.field public final mState:Lcom/android/server/pm/permission/DevicePermissionState;

.field public final mSystemPermissions:Landroid/util/SparseArray;

.field public mSystemReady:Z

.field public final mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$8Sme45Qvw9zW2bBrdtvASVYcOVo(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$updatePermissions$11(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;Lcom/android/server/pm/pkg/AndroidPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DfvddoHDfyKGCzWx8aYmsFkA5kE(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[ILjava/lang/String;ZILcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$revokeRuntimePermissionsIfPermissionDefinitionChangedInternal$7([ILjava/lang/String;ZILcom/android/server/pm/pkg/AndroidPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IZGdZLu9IXWwkIE-78RVorfH6ro(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ILjava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$restoreDelayedRuntimePermissions$5(ILjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LgrGsOx7VAKdJc4oDshdvCpA0pQ(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[ILcom/android/server/pm/PackageSetting;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$writeLegacyPermissionStateTEMP$16([ILcom/android/server/pm/PackageSetting;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MGC-4_nFjXpM3q4woMu1yIiXTSs(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[ILcom/android/server/pm/pkg/PackageStateInternal;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$readLegacyPermissionStateTEMP$15([ILcom/android/server/pm/pkg/PackageStateInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TVcfivNHjY7gHyGgY0IQMMyc0DA(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;I[ZIILcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$updatePermissionFlagsForAllApps$2(I[ZIILcom/android/server/pm/pkg/AndroidPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WSkE5PiNBH1FdUtUU2bp3jGFnOc(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[ILjava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$revokeRuntimePermissionsIfGroupChangedInternal$6([ILjava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/pm/pkg/AndroidPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XO0n9wIy3T3IzcC-Y6FduT8bcSY(I)V
    .locals 2

    const/4 v0, -0x1

    .line 3890
    const-string/jumbo v1, "permission grant or revoke changed gids"

    invoke-static {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->killUid(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XR_K49R0rSNeTixW4kIpcd-NnlQ(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$onSystemReady$14(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZvgQQyQrxfZ6zPfSBdxIwcK3hmU(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ZLcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/util/List;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$onPackageAddedInternal$17(ZLcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bgZmqAeD0LQYW4VoaxyUvyEFrhM(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ILcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$getGrantedPermissionsInternal$8(ILcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$chxVBKurN-nt7lKNd-xdsXYMz9E(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;IILandroid/content/pm/PermissionGroupInfo;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$getAllPermissionGroups$0(IILandroid/content/pm/PermissionGroupInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$k2_g4EmAjzmPTbLZVw7_encYyNA(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;IILandroid/content/pm/PermissionInfo;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$queryPermissionsByGroup$1(IILandroid/content/pm/PermissionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mKXsRlf-7x5d8JK782Hg-sGYT70(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/permission/Permission;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$updatePermissionSourcePackage$12(Lcom/android/server/pm/permission/Permission;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;Lcom/android/server/pm/pkg/AndroidPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qozdUvGVCPDUPIg8wD0NT0Qxa2A(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/permission/Permission;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$updatePermissionSourcePackage$13(Lcom/android/server/pm/permission/Permission;Lcom/android/server/pm/pkg/AndroidPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rv8NY-skAa_mYmvAKzbU4Y3WvPs(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$resetRuntimePermissionsInternal$3(ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;Lcom/android/server/pm/pkg/AndroidPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uWRHC5nVKduB4K_FGz2O8nzlqsA(II)V
    .locals 1

    .line 1767
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const-string/jumbo v0, "permissions revoked"

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->killUid(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yPrF8ewzWaNwnhsFhJAbRXoJvTU(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Ljava/lang/String;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$grantRequestedPermissionsInternal$9(Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefaultPermissionCallback(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnPermissionChangeListeners(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManagerInt(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/pm/PackageManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcheckUidPermission(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ILjava/lang/String;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermission(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smkillUid(IILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->killUid(IILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .line 182
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->LOG_TAG:Ljava/lang/String;

    .line 188
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->BACKUP_TIMEOUT_MILLIS:J

    const/4 v0, 0x0

    .line 193
    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->EMPTY_INT_ARRAY:[I

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->STORAGE_PERMISSIONS:Ljava/util/List;

    .line 210
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_AURAL_PERMISSIONS:Ljava/util/Set;

    .line 212
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    sput-object v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_VISUAL_PERMISSIONS:Ljava/util/Set;

    .line 215
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/List;

    .line 229
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NOTIFICATION_PERMISSIONS:Ljava/util/List;

    .line 232
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    .line 235
    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v6, "android.permission.INTERACT_ACROSS_USERS"

    const-string v7, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    const-string v0, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    const-string v0, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    const-string v0, "android.permission.BLUETOOTH_ADVERTISE"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/ArrayMap;)V
    .locals 6

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivilegedPermissionAllowlistSourcePackageNames:Landroid/util/ArraySet;

    .line 259
    new-instance v1, Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-direct {v1}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 267
    new-instance v2, Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-direct {v2}, Lcom/android/server/pm/permission/DevicePermissionState;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    .line 286
    new-instance v2, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v2}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 287
    const-string/jumbo v2, "platform_compat"

    .line 288
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 287
    invoke-static {v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 291
    new-instance v2, Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-direct {v2}, Lcom/android/server/pm/permission/PermissionRegistry;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 312
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    .line 326
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    .line 429
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 430
    invoke-static {}, Landroid/permission/PermissionManager;->disablePackageNamePermissionCache()V

    .line 432
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 433
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 434
    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    .line 435
    const-string p1, "android.software.leanback"

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mIsLeanback:Z

    .line 436
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 438
    const-string p1, "android"

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 441
    const-string p1, "android.hardware.type.automotive"

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 443
    const-string/jumbo p1, "ro.android.car.carservice.package"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 446
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_0
    new-instance p1, Lcom/android/server/ServiceThread;

    const-string p2, "PermissionManager"

    const/16 v0, 0xa

    const/4 v2, 0x1

    invoke-direct {p1, p2, v0, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 452
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 453
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 454
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 456
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p1

    .line 457
    invoke-virtual {p1}, Lcom/android/server/SystemConfig;->getSystemPermissions()Landroid/util/SparseArray;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mSystemPermissions:Landroid/util/SparseArray;

    .line 458
    invoke-virtual {p1}, Lcom/android/server/SystemConfig;->getGlobalGids()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mGlobalGids:[I

    .line 459
    new-instance p1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    .line 463
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/SystemConfig;->getPermissions()Landroid/util/ArrayMap;

    move-result-object p1

    .line 464
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    const/4 p2, 0x0

    .line 465
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 466
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemConfig$PermissionEntry;

    .line 467
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v4, v0, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v3

    if-nez v3, :cond_1

    .line 469
    new-instance v3, Lcom/android/server/pm/permission/Permission;

    iget-object v4, v0, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    const-string v5, "android"

    invoke-direct {v3, v4, v5, v2}, Lcom/android/server/pm/permission/Permission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 470
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermission(Lcom/android/server/pm/permission/Permission;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 472
    :cond_1
    :goto_1
    iget-object v4, v0, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    if-eqz v4, :cond_2

    .line 473
    iget-boolean v0, v0, Lcom/android/server/SystemConfig$PermissionEntry;->perUser:Z

    invoke-virtual {v3, v4, v0}, Lcom/android/server/pm/permission/Permission;->setGids([IZ)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 476
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public static buildInvalidCrossUserPermissionMessage(IILjava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 4347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    .line 4349
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4350
    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4352
    :cond_0
    const-string p2, "UID "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4353
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4354
    const-string p0, " requires "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4355
    const-string p0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1

    .line 4357
    const-string p0, " or "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4358
    const-string p0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4360
    :cond_1
    const-string p0, " to access user "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4361
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4362
    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4363
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static canGrantOemPermission(Lcom/android/server/pm/pkg/PackageState;Ljava/lang/String;)Z
    .locals 3

    .line 3565
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isOem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3568
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3570
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SystemConfig;->getPermissionAllowlist()Lcom/android/server/pm/permission/PermissionAllowlist;

    move-result-object v2

    .line 3571
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, p1}, Lcom/android/server/pm/permission/PermissionAllowlist;->getOemAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3577
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1

    .line 3573
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OEM permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requested by package "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be explicitly declared granted or not"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getVolumeUuidForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    .line 4416
    sget-object p0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object p0

    .line 4418
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4419
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4420
    const-string/jumbo p0, "primary_physical"

    return-object p0

    .line 4422
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4425
    :cond_2
    sget-object p0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object p0
.end method

.method public static hasPermission(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 4

    .line 4430
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4434
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_2

    .line 4435
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isCompatPlatformPermissionForPackage(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 5

    .line 3259
    sget-object v0, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3260
    sget-object v3, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;

    aget-object v3, v3, v2

    .line 3261
    invoke-virtual {v3}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3262
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getSdkVersion()I

    move-result v3

    if-ge v4, v3, :cond_0

    .line 3264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auto-granting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to old pkg "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3265
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3264
    const-string p1, "PermissionManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isProfileOwner(I)Z
    .locals 3

    .line 3581
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3582
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3585
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveProfileOwner(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveDeviceOwner(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static killUid(IILjava/lang/String;)V
    .locals 3

    .line 490
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 492
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 495
    :try_start_1
    invoke-interface {v2, p0, p1, p2}, Landroid/app/IActivityManager;->killUidForPermissionChange(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 501
    :catch_0
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 502
    throw p0
.end method


# virtual methods
.method public final addAllPermissionGroupsInternal(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 12

    .line 2362
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 2363
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-ge v3, v1, :cond_7

    .line 2366
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    .line 2367
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroup(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v6

    if-nez v6, :cond_0

    move-object v7, v2

    goto :goto_1

    .line 2368
    :cond_0
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 2369
    :goto_1
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/16 v8, 0x20

    const/16 v9, 0x100

    if-eqz v6, :cond_3

    if-eqz v7, :cond_1

    goto :goto_3

    .line 2384
    :cond_1
    const-string v7, "PermissionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission group "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " from package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2385
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ignored: original from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2386
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2384
    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v6, :cond_6

    if-nez v4, :cond_2

    .line 2389
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_6

    .line 2391
    :cond_2
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2393
    :goto_2
    const-string v6, "DUP:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2394
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 2371
    :cond_3
    :goto_3
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermissionGroup(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;)V

    .line 2372
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v6, :cond_6

    if-nez v4, :cond_4

    .line 2374
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_4

    .line 2376
    :cond_4
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    if-eqz v7, :cond_5

    .line 2379
    const-string v6, "UPD:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2381
    :cond_5
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    if-eqz v4, :cond_8

    .line 2398
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz p0, :cond_8

    .line 2399
    const-string p0, "PermissionManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Permission Groups: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    :cond_8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final addAllPermissionsInternal(Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/List;
    .locals 10

    .line 2311
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 2312
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    .line 2314
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 2318
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v5

    .line 2323
    :try_start_0
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v6

    const/16 v7, 0x16

    if-le v6, v7, :cond_0

    .line 2324
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 2325
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroup(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v6

    .line 2324
    invoke-static {v4, v6}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setParsedPermissionGroup(Lcom/android/internal/pm/pkg/component/ParsedPermission;Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;)V

    .line 2327
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v6, :cond_0

    .line 2328
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getParsedPermissionGroup()Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v6

    if-nez v6, :cond_0

    .line 2329
    const-string v6, "PermissionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " from package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2330
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " in an unknown group "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2329
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_0
    :goto_1
    const-wide/16 v6, 0x80

    .line 2334
    invoke-static {v4, v6, v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionInfo(Lcom/android/internal/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;

    move-result-object v6

    .line 2336
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTree(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v7

    goto :goto_2

    .line 2337
    :cond_1
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v7

    .line 2338
    :goto_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2341
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {v7, v6, v5}, Lcom/android/server/pm/permission/Permission;->isOverridingSystemPermission(Lcom/android/server/pm/permission/Permission;Landroid/content/pm/PermissionInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v5

    .line 2343
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v8

    .line 2344
    :try_start_1
    iget-object v9, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 2345
    invoke-virtual {v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTrees()Ljava/util/Collection;

    move-result-object v9

    .line 2344
    invoke-static {v7, v6, p1, v9, v5}, Lcom/android/server/pm/permission/Permission;->createOrUpdate(Lcom/android/server/pm/permission/Permission;Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/pkg/PackageState;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/Permission;

    move-result-object v5

    .line 2347
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2348
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermissionTree(Lcom/android/server/pm/permission/Permission;)V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    .line 2350
    :cond_2
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermission(Lcom/android/server/pm/permission/Permission;)V

    .line 2352
    :goto_3
    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->isDefinitionChanged()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2353
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2354
    invoke-virtual {v5, v2}, Lcom/android/server/pm/permission/Permission;->setDefinitionChanged(Z)V

    .line 2356
    :cond_3
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :goto_4
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 2338
    :goto_5
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_4
    return-object v1
.end method

.method public addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 3

    .line 1183
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1185
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1190
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1192
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1194
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_2

    .line 1195
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1196
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;II)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public final addAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;II)V
    .locals 2

    .line 5026
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5028
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 5029
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 5030
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5034
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;II)V

    return-void
.end method

.method public addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 3

    .line 1068
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OBSERVE_GRANT_REVOKE_PERMISSIONS"

    const-string v2, "addOnPermissionsChangeListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->addListener(Landroid/permission/IOnPermissionsChangeListener;)V

    return-void
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;Z)Z
    .locals 8

    .line 646
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 647
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    .line 650
    iget v1, p1, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 651
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Label must be specified in permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 655
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 656
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v3, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/pm/permission/PermissionRegistry;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 657
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v3, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 659
    :goto_1
    iget v4, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v4}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v4

    .line 660
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/Permission;)V

    if-eqz v3, :cond_3

    .line 662
    new-instance v2, Lcom/android/server/pm/permission/Permission;

    iget-object v5, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-direct {v2, v5, v6, v7}, Lcom/android/server/pm/permission/Permission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 663
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isDynamic()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 667
    :goto_2
    invoke-virtual {v2, v4, p1, v0}, Lcom/android/server/pm/permission/Permission;->addToTree(ILandroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/Permission;)Z

    move-result p1

    if-eqz v3, :cond_4

    .line 669
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermission(Lcom/android/server/pm/permission/Permission;)V

    .line 671
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz p1, :cond_5

    .line 673
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    :cond_5
    return v3

    .line 664
    :cond_6
    :try_start_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not allowed to modify non-dynamic permission "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 671
    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 648
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Instant apps can\'t add permissions"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public backupRuntimePermissions(I)[B
    .locals 4

    int-to-float v0, p1

    .line 2007
    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 2008
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2009
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 2010
    invoke-static {}, Lcom/android/server/PermissionThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 2009
    invoke-virtual {p0, v1, v2, v3}, Landroid/permission/PermissionControllerManager;->getRuntimePermissionBackup(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2013
    :try_start_0
    sget-wide v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->BACKUP_TIMEOUT_MILLIS:J

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot create permission backup for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PermissionManager"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/Permission;)I
    .locals 2

    .line 4369
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/Permission;

    .line 4370
    invoke-virtual {p1, v1}, Lcom/android/server/pm/permission/Permission;->calculateFootprint(Lcom/android/server/pm/permission/Permission;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final canAdoptPermissionsInternal(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 5

    .line 4734
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4735
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 4739
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v1

    const-string v2, " to "

    const-string v3, "Unable to update from "

    const-string v4, "PermissionManager"

    if-nez v1, :cond_1

    .line 4740
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4741
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": old package not in system partition"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4740
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 4745
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 4746
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4747
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": old package still exists"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4746
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final checkCallingOrSelfPermission(Ljava/lang/String;)Z
    .locals 0

    .line 4340
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final checkCrossUserPermission(IIIZ)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p3, p2, :cond_0

    return v0

    :cond_0
    const/16 p2, 0x3e8

    if-eq p1, p2, :cond_4

    if-nez p1, :cond_1

    goto :goto_0

    .line 4331
    :cond_1
    const-string p1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-eqz p4, :cond_2

    .line 4332
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkCallingOrSelfPermission(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 4335
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkCallingOrSelfPermission(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "android.permission.INTERACT_ACROSS_USERS"

    .line 4336
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkCallingOrSelfPermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method public final checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z
    .locals 7

    .line 1206
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 1207
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1209
    const-string p0, "PermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such permissions: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v2

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1212
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1213
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isHardOrSoftRestricted()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 1214
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isImmutablyRestricted()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1215
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 1217
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1218
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1219
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v6, v3, v0, v4, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1221
    const-string p0, "186404356"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x534e4554

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return v2

    :cond_2
    if-eqz v1, :cond_4

    .line 1225
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    .line 1228
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot modify allowlisting of an immutably restricted permission: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    return v5

    .line 1215
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final checkIfLegacyStorageOpsNeedToBeUpdated(Lcom/android/server/pm/pkg/AndroidPackage;Z[I[I)[I
    .locals 0

    if-eqz p2, :cond_1

    .line 3137
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3138
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object p0

    const-string p2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 3139
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object p0

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3140
    :cond_0
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_1
    return-object p4
.end method

.method public final checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 931
    const-string v0, "default:0"

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 937
    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p3, p4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result p3

    const/4 v0, -0x1

    if-nez p3, :cond_0

    return v0

    .line 941
    :cond_0
    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p3, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p3, 0x1

    .line 945
    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermissionInternal(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final checkPermissionInternal(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;I)I
    .locals 4

    .line 950
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez p2, :cond_1

    .line 951
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 957
    :cond_0
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    return v2

    .line 952
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, v0, p4, v1}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result p2

    if-eqz p2, :cond_2

    return v2

    .line 962
    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result p2

    invoke-static {p4, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    .line 963
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    move p2, v1

    .line 965
    :goto_1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 966
    :try_start_0
    invoke-virtual {p0, p1, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v3

    if-nez v3, :cond_4

    .line 968
    const-string p0, "PermissionManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing permissions state for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and user "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v2

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 973
    :cond_4
    :try_start_1
    invoke-virtual {p0, v3, p3, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkSinglePermissionInternalLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 974
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v1

    .line 977
    :cond_5
    :try_start_2
    sget-object p1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 978
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkSinglePermissionInternalLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 980
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v1

    .line 982
    :cond_6
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v2

    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final checkPrivilegedPermissionAllowlist(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;)Z
    .locals 4

    .line 3274
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3277
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3278
    const-string v2, "android"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 3281
    :cond_1
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_3

    .line 3284
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivilegedPermissionAllowlistSourcePackageNames:Landroid/util/ArraySet;

    .line 3285
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 3288
    :cond_3
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object p3

    .line 3289
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 3290
    invoke-virtual {v2, v0}, Lcom/android/server/pm/ApexManager;->getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3291
    invoke-virtual {p0, p2, p3, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPrivilegedPermissionAllowlistState(Lcom/android/server/pm/pkg/PackageState;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3294
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 3297
    :cond_4
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    .line 3309
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mSystemReady:Z

    if-nez v2, :cond_7

    .line 3310
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isApkInUpdatedApex()Z

    move-result p2

    if-nez p2, :cond_7

    .line 3313
    const-string p2, "PermissionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Privileged permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3314
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") not in privapp-permissions allowlist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3313
    invoke-static {p2, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3316
    sget-boolean p2, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz p2, :cond_7

    .line 3317
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p2

    .line 3318
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-nez v2, :cond_6

    .line 3319
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 3321
    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3323
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 3327
    :cond_7
    :goto_2
    sget-boolean p0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    xor-int/2addr p0, v1

    return p0

    :cond_8
    :goto_3
    return v1
.end method

.method public final checkSinglePermissionInternalLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Z)Z
    .locals 1

    .line 990
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    if-eqz p3, :cond_2

    .line 995
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 996
    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    move-result p0

    if-eqz p0, :cond_1

    return p1

    :cond_1
    return v0

    :cond_2
    return p1
.end method

.method public final checkSingleUidPermissionInternalLocked(ILjava/lang/String;)Z
    .locals 0

    .line 1062
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_0

    .line 1063
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final checkUidPermission(ILjava/lang/String;)I
    .locals 1

    .line 1003
    const-string v0, "default:0"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1008
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 1009
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p0, -0x1

    return p0

    .line 1013
    :cond_0
    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p3, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p3

    .line 1014
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermissionInternal(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final checkUidPermissionInternal(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1040
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 1041
    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermissionInternal(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;I)I

    move-result p0

    return p0

    .line 1044
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p1

    .line 1045
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkSingleUidPermissionInternalLocked(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1046
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1049
    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 1051
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkSingleUidPermissionInternalLocked(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1052
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v0

    .line 1054
    :cond_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    const/4 p0, -0x1

    return p0

    :goto_0
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final enforceCrossUserPermission(IIZZLjava/lang/String;)V
    .locals 0

    if-ltz p2, :cond_2

    if-eqz p4, :cond_0

    .line 4295
    const-string/jumbo p4, "no_debugging_features"

    invoke-virtual {p0, p4, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceShellRestriction(Ljava/lang/String;II)V

    .line 4297
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p4

    .line 4298
    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkCrossUserPermission(IIIZ)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 4301
    :cond_1
    invoke-static {p1, p2, p5, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->buildInvalidCrossUserPermissionMessage(IILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 4303
    const-string p1, "PermissionManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4304
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4292
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid userId "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceGrantRevokeGetRuntimePermissionPermissions(Ljava/lang/String;)V
    .locals 4

    .line 4269
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 4271
    const-string v2, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 4273
    const-string v0, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 4275
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requires "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V
    .locals 3

    .line 4258
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 4260
    const-string v0, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 4262
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requires "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/Permission;)V
    .locals 2

    .line 4379
    invoke-virtual {p2}, Lcom/android/server/pm/permission/Permission;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    .line 4380
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/Permission;)I

    move-result p0

    .line 4381
    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result p1

    add-int/2addr p0, p1

    const p1, 0x8000

    if-gt p0, p1, :cond_0

    goto :goto_0

    .line 4382
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Permission tree size cap exceeded"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final enforceShellRestriction(Ljava/lang/String;II)V
    .locals 1

    const/16 v0, 0x7d0

    if-ne p2, v0, :cond_2

    if-ltz p3, :cond_1

    .line 4313
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 4314
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Shell does not have permission to access user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-gez p3, :cond_2

    .line 4317
    sget-object p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to check shell permission for user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\n\t"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x3

    .line 4318
    invoke-static {p2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4317
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public getAllAppOpPermissionPackages()Ljava/util/Map;
    .locals 7

    .line 5094
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 5095
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 5096
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionRegistry;->getAllAppOpPermissionPackages()Landroid/util/ArrayMap;

    move-result-object p0

    .line 5097
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 5098
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 5100
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5101
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 5102
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6, v5}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5104
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v1

    .line 5105
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .locals 7

    .line 521
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 522
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 523
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 526
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 527
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 528
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroups()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    int-to-long v5, p1

    .line 529
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionGroupInfo(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;J)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 531
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 533
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 534
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-object v1

    .line 531
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public getAllPermissionStates(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .locals 0

    .line 1026
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This method is supported in newer implementation only"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllPermissionsWithProtection(I)Ljava/util/List;
    .locals 4

    .line 5230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5232
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 5233
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/Permission;

    .line 5234
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->getProtection()I

    move-result v3

    if-ne v3, p1, :cond_0

    const/4 v3, 0x0

    .line 5235
    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5238
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public getAllPermissionsWithProtectionFlags(I)Ljava/util/List;
    .locals 4

    .line 5247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5249
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 5250
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/Permission;

    .line 5251
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->getProtectionFlags()I

    move-result v3

    and-int/2addr v3, p1

    if-ne v3, p1, :cond_0

    const/4 v3, 0x0

    .line 5252
    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5255
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final getAllUserIds()[I
    .locals 0

    .line 3002
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    move-result-object p0

    return-object p0
.end method

.method public getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;
    .locals 6

    .line 1087
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x7

    .line 1088
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    int-to-float v0, p3

    const/4 v1, 0x0

    .line 1092
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 1094
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowlistedRestrictedPermissions for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 1105
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1106
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1107
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v5, 0x0

    .line 1106
    invoke-virtual {v3, p1, v2, v4, v5}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v1

    .line 1110
    :cond_2
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    const/4 v5, 0x1

    .line 1113
    :cond_3
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1114
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/pkg/AndroidPackage;I)Z

    move-result p1

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_5

    if-eqz v5, :cond_4

    goto :goto_0

    .line 1118
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Querying system allowlist requires android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    and-int/lit8 v1, p2, 0x6

    if-eqz v1, :cond_7

    if-nez v5, :cond_7

    if-eqz p1, :cond_6

    goto :goto_1

    .line 1125
    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Querying upgrade or installer allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1131
    :cond_7
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1133
    :try_start_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;II)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1136
    throw p0
.end method

.method public final getAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;II)Ljava/util/List;
    .locals 3

    .line 1142
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 1143
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 1145
    const-string p0, "PermissionManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing permissions state for "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and user "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_1

    const/16 p3, 0x1000

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_2

    or-int/lit16 p3, p3, 0x2000

    :cond_2
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_3

    or-int/lit16 p3, p3, 0x800

    .line 1163
    :cond_3
    :try_start_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1165
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v2

    and-int/2addr v2, p3

    if-eqz v2, :cond_4

    if-nez v1, :cond_5

    .line 1168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1170
    :cond_5
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1174
    :cond_6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v1

    .line 1175
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 5197
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5198
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAppOpPermissionPackagesInternal(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAppOpPermissionPackagesInternal(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 508
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getAppOpPermissionPackages(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    if-nez p0, :cond_0

    .line 511
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 513
    :try_start_1
    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    .line 514
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public getDefaultPermissionGrantFingerprint(I)Ljava/lang/String;
    .locals 0

    .line 4664
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->isPermissionUpgradeNeeded(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    return-object p0
.end method

.method public getGidsForUid(I)[I
    .locals 4

    .line 5141
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 5142
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 5143
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 5144
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v2

    if-nez v2, :cond_0

    .line 5146
    const-string p0, "PermissionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing permissions state for app ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and user ID "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5148
    sget-object p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->EMPTY_INT_ARRAY:[I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 5150
    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mGlobalGids:[I

    invoke-virtual {v2, p0, p1}, Lcom/android/server/pm/permission/UidPermissionState;->computeGids([II)[I

    move-result-object p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    .line 5151
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public getGrantedPermissions(Ljava/lang/String;I)Ljava/util/Set;
    .locals 2

    .line 5181
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-float v0, p2

    .line 5182
    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 5183
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getGrantedPermissionsInternal(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final getGrantedPermissionsInternal(Ljava/lang/String;I)Ljava/util/Set;
    .locals 3

    .line 2459
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2461
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    .line 2464
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 2465
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/pkg/PackageStateInternal;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2467
    const-string p0, "PermissionManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing permissions state for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and user "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 2470
    :cond_1
    :try_start_1
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2471
    invoke-virtual {v2}, Lcom/android/server/pm/permission/UidPermissionState;->getGrantedPermissions()Ljava/util/Set;

    move-result-object p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    .line 2476
    :cond_2
    :try_start_2
    new-instance p1, Landroid/util/ArraySet;

    .line 2477
    invoke-virtual {v2}, Lcom/android/server/pm/permission/UidPermissionState;->getGrantedPermissions()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 2478
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ILcom/android/server/pm/pkg/PackageStateInternal;)V

    invoke-interface {p1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2490
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p1

    .line 2492
    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public getInstalledPermissions(Ljava/lang/String;)Ljava/util/Set;
    .locals 4

    .line 5166
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5167
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 5168
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 5169
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/Permission;

    .line 5170
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5171
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5174
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 5111
    new-instance v2, Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-direct {v2}, Lcom/android/server/pm/permission/LegacyPermissionState;-><init>()V

    .line 5112
    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v3

    .line 5113
    :try_start_0
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserIds()[I

    move-result-object v4

    .line 5114
    array-length v5, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_2

    aget v8, v4, v7

    .line 5115
    invoke-virtual {v0, v1, v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v9

    if-nez v9, :cond_0

    .line 5117
    const-string v9, "PermissionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Missing permissions state for app ID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " and user ID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 5122
    :cond_0
    invoke-virtual {v9}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionStates()Ljava/util/List;

    move-result-object v9

    .line 5123
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_1

    .line 5125
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/permission/PermissionState;

    .line 5127
    new-instance v13, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 5128
    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v14

    .line 5129
    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->getPermission()Lcom/android/server/pm/permission/Permission;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v15

    .line 5130
    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v6

    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v12

    invoke-direct {v13, v14, v15, v6, v12}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;ZZI)V

    .line 5131
    invoke-virtual {v2, v13, v8}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 5134
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v2

    :goto_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method public getLegacyPermissions()Ljava/util/List;
    .locals 7

    .line 5080
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 5081
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5082
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/Permission;

    .line 5083
    new-instance v3, Lcom/android/server/pm/permission/LegacyPermission;

    .line 5084
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->getType()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->getUid()I

    move-result v6

    .line 5085
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->getRawGids()[I

    move-result-object v2

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/android/server/pm/permission/LegacyPermission;-><init>(Landroid/content/pm/PermissionInfo;II[I)V

    .line 5086
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5088
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v1

    .line 5089
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 704
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    .line 705
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 8

    .line 710
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 714
    :cond_0
    const-string v0, "getPermissionFlags"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceGrantRevokeGetRuntimePermissionPermissions(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 715
    const-string v7, "getPermissionFlags"

    const/4 v5, 0x1

    move-object v2, p0

    move v3, p3

    move v4, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 720
    iget-object p0, v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 724
    :cond_1
    iget-object p3, v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p3, p1, v3, v4, v1}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result p3

    if-eqz p3, :cond_2

    return v1

    .line 729
    :cond_2
    iget-object p3, v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p3

    .line 730
    :try_start_0
    iget-object p4, v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p4, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object p4

    if-nez p4, :cond_3

    .line 731
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 734
    :cond_3
    :try_start_1
    invoke-virtual {v2, p0, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object p0

    if-nez p0, :cond_4

    .line 736
    const-string p0, "PermissionManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Missing permissions state for "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and user "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v1

    .line 740
    :cond_4
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result p0

    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return p0

    .line 741
    :goto_0
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public getPermissionGids(Ljava/lang/String;I)[I
    .locals 2

    .line 5189
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-float v0, p2

    .line 5190
    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 5191
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionGidsInternal(Ljava/lang/String;I)[I

    move-result-object p0

    return-object p0
.end method

.method public final getPermissionGidsInternal(Ljava/lang/String;I)[I
    .locals 1

    .line 2497
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 2498
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2500
    sget-object p0, Llibcore/util/EmptyArray;->INT:[I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 2502
    :cond_0
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/Permission;->computeGids(I)[I

    move-result-object p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    .line 2503
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 6

    .line 543
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 544
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 549
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 550
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroup(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v3

    if-nez v3, :cond_1

    .line 552
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    int-to-long v4, p2

    .line 554
    :try_start_1
    invoke-static {v3, v4, v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionGroupInfo(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;J)Landroid/content/pm/PermissionGroupInfo;

    move-result-object p2

    .line 556
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 558
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 559
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, p2, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v0, v1, v4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 561
    const-string p0, "186113473"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p2, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x534e4554

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-object v2

    :cond_2
    return-object p2

    .line 556
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public getPermissionInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PermissionInfo;
    .locals 4

    .line 571
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 572
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 576
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p3

    .line 577
    invoke-virtual {p0, p3, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionInfoCallingTargetSdkVersion(Lcom/android/server/pm/pkg/AndroidPackage;I)I

    move-result p3

    .line 580
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 581
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v3

    if-nez v3, :cond_1

    .line 583
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 585
    :cond_1
    :try_start_1
    invoke-virtual {v3, p2, p3}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    move-result-object p2

    .line 586
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 588
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 589
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, p2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, p3, v3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 591
    const-string p0, "183122164"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p2, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x534e4554

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-object v2

    :cond_2
    return-object p2

    .line 586
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final getPermissionInfoCallingTargetSdkVersion(Lcom/android/server/pm/pkg/AndroidPackage;I)I
    .locals 1

    .line 598
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 p2, 0x2710

    if-eqz p0, :cond_2

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_2

    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return p2

    .line 607
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result p0

    return p0

    :cond_2
    :goto_0
    return p2
.end method

.method public getPermissionRequestState(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 0

    .line 1020
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "getPermissionRequestState is not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;
    .locals 1

    .line 5221
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 5222
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 5223
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final getPrivilegedPermissionAllowlistState(Lcom/android/server/pm/pkg/PackageState;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    .line 3334
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getPermissionAllowlist()Lcom/android/server/pm/permission/PermissionAllowlist;

    move-result-object v0

    .line 3335
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3336
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isOdm()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3339
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isProduct()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3340
    invoke-virtual {v0, v1, p2}, Lcom/android/server/pm/permission/PermissionAllowlist;->getProductPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 3342
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystemExt()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3343
    invoke-virtual {v0, v1, p2}, Lcom/android/server/pm/permission/PermissionAllowlist;->getSystemExtPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p3, :cond_5

    .line 3347
    invoke-virtual {v0, v1, p2}, Lcom/android/server/pm/permission/PermissionAllowlist;->getPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is an APK in APEX, but has permission allowlist on the system image. Please bundle the allowlist in the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " APEX instead."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PermissionManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3355
    :cond_3
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p0, p3}, Lcom/android/server/pm/ApexManager;->getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3358
    invoke-virtual {v0, p0, v1, p2}, Lcom/android/server/pm/permission/PermissionAllowlist;->getApexPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_4

    return-object p0

    :cond_4
    return-object p1

    .line 3365
    :cond_5
    invoke-virtual {v0, v1, p2}, Lcom/android/server/pm/permission/PermissionAllowlist;->getPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 3337
    :cond_6
    :goto_0
    invoke-virtual {v0, v1, p2}, Lcom/android/server/pm/permission/PermissionAllowlist;->getVendorPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final getSourcePackageSetting(Lcom/android/server/pm/permission/Permission;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .locals 0

    .line 3559
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 3560
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    return-object p0
.end method

.method public final getSourcePackageSigningDetails(Lcom/android/server/pm/permission/Permission;)Landroid/content/pm/SigningDetails;
    .locals 0

    .line 3550
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getSourcePackageSetting(Lcom/android/server/pm/permission/Permission;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_0

    .line 3552
    sget-object p0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    return-object p0

    .line 3554
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    return-object p0
.end method

.method public final getSplitPermissionInfos()Ljava/util/List;
    .locals 0

    .line 3254
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/SystemConfig;->getSplitPermissions()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSplitPermissions()Ljava/util/List;
    .locals 0

    .line 3249
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getSplitPermissionInfos()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Landroid/permission/PermissionManager;->splitPermissionInfoListToParcelableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;
    .locals 0

    .line 4474
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4478
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UserPermissionState;->getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object p0

    return-object p0
.end method

.method public final getUidStateLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;
    .locals 0

    .line 4468
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object p0

    return-object p0
.end method

.method public final getUidStateLocked(Lcom/android/server/pm/pkg/PackageStateInternal;I)Lcom/android/server/pm/permission/UidPermissionState;
    .locals 0

    .line 4461
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object p0

    return-object p0
.end method

.method public final grantRequestedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/util/ArrayMap;I)V
    .locals 15

    move/from16 v5, p3

    .line 3622
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x17

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-lt v0, v1, :cond_0

    move v11, v10

    goto :goto_0

    :cond_0
    move v11, v9

    .line 3625
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v12

    .line 3627
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 3629
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    move-object/from16 v14, p2

    .line 3630
    invoke-virtual {v14, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 3632
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 3638
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 3639
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v3

    if-nez v3, :cond_3

    .line 3641
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    .line 3643
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_4
    if-eqz v12, :cond_5

    .line 3644
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_5
    if-nez v11, :cond_6

    .line 3645
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->isRuntimeOnly()Z

    move-result v6

    if-nez v6, :cond_7

    .line 3646
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v10, :cond_7

    move v6, v10

    goto :goto_2

    :cond_7
    move v6, v9

    .line 3647
    :goto_2
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->isAppOp()Z

    move-result v3

    .line 3648
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 3650
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    if-eqz v6, :cond_a

    if-eqz v11, :cond_9

    and-int/lit8 v0, v1, 0x14

    if-nez v0, :cond_8

    .line 3656
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    :cond_8
    move/from16 v5, p3

    goto :goto_1

    :cond_9
    and-int/lit8 v1, v1, 0x48

    if-eqz v1, :cond_8

    .line 3663
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    const/16 v3, 0x48

    move v5, v4

    const/4 v4, 0x0

    move-object v0, p0

    move/from16 v6, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    move v4, v5

    move v5, v6

    goto/16 :goto_1

    :cond_a
    move-object v6, v2

    if-eqz v3, :cond_1

    .line 3667
    sget-object v3, Lcom/android/server/pm/PackageInstallerService;->INSTALLER_CHANGEABLE_APP_OP_PERMISSIONS:Ljava/util/Set;

    .line 3669
    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b

    goto/16 :goto_1

    .line 3674
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v10, :cond_c

    move v0, v9

    goto :goto_3

    :cond_c
    const/4 v0, 0x2

    .line 3675
    :goto_3
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v1

    invoke-static {v5, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 3676
    invoke-static {v6}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3677
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;

    invoke-direct {v7, p0, v3, v1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Ljava/lang/String;II)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 3648
    :goto_4
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_d
    return-void
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 1341
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1342
    const-string p3, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    .line 1343
    invoke-virtual {p0, v4, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermission(ILjava/lang/String;)I

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    :goto_0
    move v3, p3

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    goto :goto_0

    .line 1346
    :goto_1
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    return-void
.end method

.method public final grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v2, p5

    move-object/from16 v8, p6

    .line 1359
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1360
    const-string v0, "PermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such user:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1364
    :cond_0
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string v4, "grantRuntimePermission"

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 1368
    const-string v5, "grantRuntimePermission"

    const/4 v3, 0x1

    move/from16 v1, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1373
    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    .line 1374
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    if-eqz v3, :cond_1c

    if-nez v4, :cond_1

    goto/16 :goto_8

    .line 1379
    :cond_1
    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v1, v2, v9}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 1386
    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v5

    .line 1387
    :try_start_0
    iget-object v10, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v10, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v10

    if-eqz v10, :cond_1a

    .line 1391
    invoke-virtual {v10}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v11

    .line 1392
    invoke-virtual {v10}, Lcom/android/server/pm/permission/Permission;->isSoftRestricted()Z

    move-result v10

    .line 1393
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    const/4 v5, 0x1

    if-eqz v11, :cond_2

    .line 1395
    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mayManageRolePermission(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v5

    goto :goto_0

    :cond_2
    move v1, v9

    :goto_0
    if-eqz v10, :cond_3

    .line 1396
    iget-object v10, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 1398
    invoke-static {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 1399
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v12

    .line 1397
    invoke-static {v10, v11, v3, v12, v7}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v10

    .line 1400
    invoke-virtual {v10}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->mayGrantPermission()Z

    move-result v10

    if-eqz v10, :cond_3

    move v9, v5

    .line 1404
    :cond_3
    iget-object v10, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v10

    .line 1405
    :try_start_1
    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v5, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v5

    if-eqz v5, :cond_19

    .line 1410
    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v11

    .line 1411
    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->hasGids()Z

    move-result v12

    if-nez v11, :cond_7

    .line 1412
    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_1

    .line 1414
    :cond_4
    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v13

    if-eqz v13, :cond_6

    if-eqz v1, :cond_5

    goto :goto_1

    .line 1416
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is managed by role"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 1419
    :cond_6
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " requested by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1420
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a changeable permission type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1423
    :cond_7
    :goto_1
    invoke-virtual {v0, v3, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v1

    if-nez v1, :cond_8

    .line 1425
    const-string v0, "PermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing permissions state for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 1430
    :cond_8
    :try_start_2
    invoke-virtual {v1, v7}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 1431
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    goto :goto_2

    .line 1432
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has not requested permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1440
    :cond_a
    :goto_2
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v13

    const/16 v14, 0x17

    if-ge v13, v14, :cond_b

    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 1441
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 1444
    :cond_b
    :try_start_3
    invoke-virtual {v1, v7}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v13

    and-int/lit8 v15, v13, 0x10

    if-eqz v15, :cond_c

    .line 1446
    const-string v0, "PermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot grant system fixed permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :cond_c
    if-nez p3, :cond_d

    and-int/lit8 v15, v13, 0x4

    if-eqz v15, :cond_d

    .line 1451
    :try_start_4
    const-string v0, "PermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot grant policy fixed permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 1456
    :cond_d
    :try_start_5
    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->isHardRestricted()Z

    move-result v15

    if-eqz v15, :cond_e

    and-int/lit16 v13, v13, 0x3800

    if-nez v13, :cond_e

    .line 1458
    const-string v0, "PermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot grant hard restricted non-exempt permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 1463
    :cond_e
    :try_start_6
    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->isSoftRestricted()Z

    move-result v13

    if-eqz v13, :cond_f

    if-nez v9, :cond_f

    .line 1464
    const-string v0, "PermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot grant soft restricted permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 1469
    :cond_f
    :try_start_7
    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v9

    if-nez v9, :cond_14

    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v9

    if-eqz v9, :cond_10

    goto :goto_4

    .line 1478
    :cond_10
    invoke-interface {v4, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_3

    .line 1479
    :cond_11
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot grant non-ephemeral permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1483
    :cond_12
    :goto_3
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v4

    if-ge v4, v14, :cond_13

    .line 1484
    const-string v0, "PermissionManager"

    const-string v1, "Cannot grant runtime permission to a legacy app"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 1488
    :cond_13
    :try_start_8
    invoke-virtual {v1, v5}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1489
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 1474
    :cond_14
    :goto_4
    :try_start_9
    invoke-virtual {v1, v5}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1475
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 1492
    :cond_15
    :try_start_a
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz v11, :cond_16

    const/16 v1, 0x4db

    .line 1495
    invoke-virtual {v0, v1, v7, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    .line 1499
    :cond_16
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v2, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    if-eqz v8, :cond_18

    if-eqz v11, :cond_17

    .line 1502
    invoke-virtual {v8, v0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionGranted(II)V

    goto :goto_5

    .line 1504
    :cond_17
    invoke-virtual {v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onInstallPermissionGranted()V

    :goto_5
    if-eqz v12, :cond_18

    .line 1507
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-virtual {v8, v0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onGidsChanged(II)V

    :cond_18
    return-void

    .line 1407
    :cond_19
    :try_start_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1492
    :goto_6
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_7

    .line 1389
    :cond_1a
    :try_start_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1393
    :goto_7
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 1381
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1376
    :cond_1c
    :goto_8
    const-string v0, "PermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final handleAppIdMigration(Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .locals 13

    .line 4917
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4918
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 4920
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 4927
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 4928
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object p1

    array-length v3, p1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_4

    aget v5, p1, v4

    .line 4929
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/permission/DevicePermissionState;->getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v5

    .line 4932
    invoke-virtual {v5, p2}, Lcom/android/server/pm/permission/UserPermissionState;->getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_4

    .line 4938
    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/server/pm/permission/UserPermissionState;->getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v7

    if-nez v7, :cond_1

    .line 4941
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v7

    invoke-virtual {v5, v7, v6}, Lcom/android/server/pm/permission/UserPermissionState;->createUidStateWithExisting(ILcom/android/server/pm/permission/UidPermissionState;)Lcom/android/server/pm/permission/UidPermissionState;

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    .line 4943
    :cond_1
    invoke-virtual {v6}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionStates()Ljava/util/List;

    move-result-object v6

    .line 4944
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_3

    .line 4946
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/permission/PermissionState;

    .line 4948
    invoke-virtual {v10}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 4952
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v12

    invoke-virtual {p0, v12, v10, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mergePermissionState(ILcom/android/server/pm/permission/PermissionState;Lcom/android/server/pm/permission/PermissionState;)Landroid/util/Pair;

    move-result-object v11

    .line 4953
    invoke-virtual {v10}, Lcom/android/server/pm/permission/PermissionState;->getPermission()Lcom/android/server/pm/permission/Permission;

    move-result-object v10

    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Boolean;

    .line 4954
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 4953
    invoke-virtual {v7, v10, v12, v11}, Lcom/android/server/pm/permission/UidPermissionState;->putPermissionState(Lcom/android/server/pm/permission/Permission;ZI)V

    goto :goto_2

    .line 4957
    :cond_2
    invoke-virtual {v10}, Lcom/android/server/pm/permission/PermissionState;->getPermission()Lcom/android/server/pm/permission/Permission;

    move-result-object v11

    .line 4958
    invoke-virtual {v10}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v12

    invoke-virtual {v10}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v10

    .line 4957
    invoke-virtual {v7, v11, v12, v10}, Lcom/android/server/pm/permission/UidPermissionState;->putPermissionState(Lcom/android/server/pm/permission/Permission;ZI)V

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 4964
    :cond_3
    :goto_3
    invoke-virtual {v5, p2}, Lcom/android/server/pm/permission/UserPermissionState;->removeUidState(I)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4966
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_5
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 4976
    :cond_5
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4977
    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackagesForAppId(I)Ljava/util/List;

    move-result-object v1

    .line 4979
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v3

    .line 4980
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object v4

    array-length v5, v4

    :goto_6
    if-ge v2, v5, :cond_9

    aget v6, v4, v2

    .line 4982
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v7, v6}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v7

    if-nez v7, :cond_6

    goto :goto_7

    .line 4986
    :cond_6
    invoke-virtual {v7, p2}, Lcom/android/server/pm/permission/UserPermissionState;->getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v8

    if-nez v8, :cond_7

    goto :goto_7

    .line 4992
    :cond_7
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v9

    invoke-virtual {v7, v9, v8}, Lcom/android/server/pm/permission/UserPermissionState;->createUidStateWithExisting(ILcom/android/server/pm/permission/UidPermissionState;)Lcom/android/server/pm/permission/UidPermissionState;

    .line 4996
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 4998
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 4997
    invoke-virtual {p0, p2, v7, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->removeUidStateAndResetPackageInstallPermissionsFixed(ILjava/lang/String;I)V

    goto :goto_7

    :catchall_1
    move-exception p0

    goto :goto_8

    .line 5000
    :cond_8
    invoke-virtual {p0, p1, p2, v1, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeSharedUserPermissionsForLeavingPackageInternal(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/util/List;I)V

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 5004
    :cond_9
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_8
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final inheritPermissionStateToNewImplicitPermissionLocked(Landroid/util/ArraySet;Ljava/lang/String;Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 7

    .line 3089
    invoke-interface {p4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p4

    .line 3093
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v0, :cond_3

    .line 3095
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3096
    invoke-virtual {p3, v5}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v3, :cond_0

    move v4, v1

    .line 3102
    :cond_0
    invoke-virtual {p3, v5}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v4, v3

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    .line 3105
    invoke-virtual {p3, v5}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v5

    or-int/2addr v4, v5

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_5

    .line 3111
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v0, :cond_4

    .line 3112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " inherits runtime perm grant from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "PermissionManager"

    invoke-static {p4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    :cond_4
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    .line 3120
    :cond_5
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object p0

    invoke-virtual {p3, p0, v4, v4}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    return-void
.end method

.method public final isEffectivelyGranted(Lcom/android/server/pm/permission/PermissionState;)Z
    .locals 3

    .line 4755
    invoke-virtual {p1}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result p0

    and-int/lit8 v0, p0, 0x10

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 v0, p0, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_1

    .line 4763
    invoke-virtual {p1}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    const v0, 0x10048

    and-int/2addr p0, v0

    if-eqz p0, :cond_3

    return v2

    .line 4767
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result p0

    return p0
.end method

.method public final isPermissionDeclaredByDisabledSystemPkg(Lcom/android/server/pm/permission/Permission;)Z
    .locals 3

    .line 4160
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4161
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4160
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4162
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4163
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4164
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPermissions()Ljava/util/List;

    move-result-object p0

    .line 4165
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 4166
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4167
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getProtectionLevel()I

    move-result v2

    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v1

    if-ne v2, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    .line 1970
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p3

    if-eq p3, p4, :cond_0

    .line 1971
    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPermissionRevokedByPolicy for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p3, v1, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_1

    return v0

    .line 1980
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    .line 1981
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p1, p3, p4, v0}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 1986
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1988
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    .line 1991
    :cond_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1992
    throw p0
.end method

.method public final isPermissionSplitFromNonRuntime(Ljava/lang/String;I)Z
    .locals 6

    .line 1879
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getSplitPermissionInfos()Ljava/util/List;

    move-result-object v0

    .line 1880
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 1882
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 1883
    invoke-virtual {v4}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v5

    if-ge p2, v5, :cond_1

    .line 1884
    invoke-virtual {v4}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1885
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v5

    .line 1886
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 1887
    invoke-virtual {v4}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1888
    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v2

    .line 1889
    :goto_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public isPermissionsReviewRequired(Ljava/lang/String;I)Z
    .locals 0

    .line 5157
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5160
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPermissionsReviewRequiredInternal(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isPermissionsReviewRequiredInternal(Ljava/lang/String;I)Z
    .locals 4

    .line 3592
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3598
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v1

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    return v0

    .line 3603
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 3604
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object p0

    if-nez p0, :cond_2

    .line 3606
    const-string p0, "PermissionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing permissions state for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and user "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3608
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 3610
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionsReviewRequired()Z

    move-result p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return p0

    .line 3611
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$getAllPermissionGroups$0(IILandroid/content/pm/PermissionGroupInfo;)Z
    .locals 1

    .line 534
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object p3, p3, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p1, p2, v0}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$getGrantedPermissionsInternal$8(ILcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)Z
    .locals 1

    .line 2479
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p0, p3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 2483
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    move-result p0

    if-nez p0, :cond_1

    .line 2485
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p0

    .line 2484
    invoke-static {p1, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "140256621"

    filled-new-array {p1, p0, p3}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x534e4554

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$grantRequestedPermissionsInternal$9(Ljava/lang/String;II)V
    .locals 1

    .line 3678
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    .line 3679
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    return-void
.end method

.method public final synthetic lambda$onPackageAddedInternal$17(ZLcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/util/List;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 4720
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionsIfGroupChangedInternal(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 4721
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeStoragePermissionsIfScopeExpandedInternal(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 4722
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeSystemAlertWindowIfUpgradedPast23(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 4725
    invoke-virtual {p0, p5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionsIfPermissionDefinitionChangedInternal(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final synthetic lambda$onSystemReady$14(I)V
    .locals 1

    .line 4398
    sget-object p1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updateAllPermissions(Ljava/lang/String;Z)V

    return-void
.end method

.method public final synthetic lambda$queryPermissionsByGroup$1(IILandroid/content/pm/PermissionInfo;)Z
    .locals 1

    .line 639
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object p3, p3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p1, p2, v0}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$readLegacyPermissionStateTEMP$15([ILcom/android/server/pm/pkg/PackageStateInternal;)V
    .locals 9

    .line 4497
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    .line 4499
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4500
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getSharedUserAppId()I

    move-result v1

    .line 4501
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManagerInternal;->getSharedUserApi(I)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4503
    const-string p0, "PermissionManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Missing shared user Api for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4506
    :cond_0
    invoke-interface {v2}, Lcom/android/server/pm/pkg/SharedUserApi;->getSharedUserLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v1

    goto :goto_0

    .line 4508
    :cond_1
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v1

    .line 4510
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 4511
    :try_start_0
    array-length v3, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget v5, p1, v4

    .line 4512
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/permission/DevicePermissionState;->getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v6

    .line 4514
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 4515
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isInstallPermissionsFixed()Z

    move-result v8

    .line 4514
    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V

    .line 4516
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/UserPermissionState;->getOrCreateUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v6

    .line 4517
    invoke-virtual {v6}, Lcom/android/server/pm/permission/UidPermissionState;->reset()V

    .line 4518
    invoke-virtual {v1, v5}, Lcom/android/server/pm/permission/LegacyPermissionState;->isMissing(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/UidPermissionState;->setMissing(Z)V

    .line 4520
    invoke-virtual {v1, v5}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object v5

    .line 4519
    invoke-virtual {p0, v6, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->readLegacyPermissionStatesLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/util/Collection;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 4522
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$resetRuntimePermissionsInternal$3(ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0

    .line 1748
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    return-void
.end method

.method public final synthetic lambda$restoreDelayedRuntimePermissions$5(ILjava/lang/Boolean;)V
    .locals 1

    .line 2062
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 2065
    :cond_0
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p2

    .line 2066
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2067
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$revokeRuntimePermissionsIfGroupChangedInternal$6([ILjava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 13

    .line 2213
    invoke-interface/range {p7 .. p7}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2214
    array-length v9, p1

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v9, :cond_1

    aget v6, p1, v10

    .line 2216
    invoke-virtual {p0, v2, p2, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 2219
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Revoking permission "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as the group changed from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p4

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p5

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "72710897"

    filled-new-array {v3, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x534e4554

    .line 2218
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2226
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p2

    move/from16 v5, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not revoke "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "PermissionManager"

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    move-object/from16 v11, p4

    move-object/from16 v12, p5

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final synthetic lambda$revokeRuntimePermissionsIfPermissionDefinitionChangedInternal$7([ILjava/lang/String;ZILcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v3, p2

    .line 2264
    invoke-interface/range {p5 .. p5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2265
    invoke-interface/range {p5 .. p5}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v10

    const/16 v0, 0x2710

    if-ge v10, v0, :cond_0

    goto/16 :goto_3

    .line 2270
    :cond_0
    array-length v11, v9

    const/4 v0, 0x0

    move v12, v0

    :goto_0
    if-ge v12, v11, :cond_3

    aget v6, v9, v12

    .line 2271
    invoke-virtual {v1, v2, v3, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 2273
    const-string v4, "default:0"

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    if-nez v0, :cond_2

    const v0, 0x8034

    and-int/2addr v0, v4

    if-nez v0, :cond_2

    .line 2281
    invoke-static {v6, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    const v4, 0x534e4554

    .line 2282
    const-string v5, " due to definition change"

    const-string v7, " from package "

    const-string v8, "Revoking permission "

    if-eqz p3, :cond_1

    .line 2283
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "195338390"

    filled-new-array {v14, v0, v13}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_1

    .line 2287
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "154505240"

    filled-new-array {v15, v13, v14}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2290
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "168319670"

    filled-new-array {v14, v0, v13}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2294
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "PermissionManager"

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    :try_start_0
    iget-object v8, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 2300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not revoke "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_3
    :goto_3
    return-void
.end method

.method public final synthetic lambda$updatePermissionFlagsForAllApps$2(I[ZIILcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 3

    .line 911
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 912
    :try_start_0
    invoke-virtual {p0, p5, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v1

    if-nez v1, :cond_0

    .line 914
    const-string p0, "PermissionManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing permissions state for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    invoke-interface {p5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " and user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 914
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 919
    :try_start_1
    aget-boolean v2, p2, p1

    invoke-virtual {v1, p3, p4}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlagsForAllPermissions(II)Z

    move-result p3

    or-int/2addr p3, v2

    aput-boolean p3, p2, p1

    .line 921
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 922
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    invoke-interface {p5}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    return-void

    .line 921
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$updatePermissionSourcePackage$12(Lcom/android/server/pm/permission/Permission;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 6

    .line 4116
    invoke-interface {p4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4117
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    .line 4116
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokePermissionFromPackageForUser(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    return-void
.end method

.method public final synthetic lambda$updatePermissionSourcePackage$13(Lcom/android/server/pm/permission/Permission;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 8

    .line 4121
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 4122
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 4123
    :try_start_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 4124
    invoke-virtual {p0, p2, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v5

    if-nez v5, :cond_0

    .line 4127
    const-string v5, "PermissionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing permissions state for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4128
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " and user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4127
    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 4131
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4133
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$updatePermissions$11(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 6

    if-ne p6, p1, :cond_0

    return-void

    .line 4046
    :cond_0
    invoke-static {p6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getVolumeUuidForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 4047
    invoke-static {p3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    :goto_0
    move v2, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    const/4 v5, -0x1

    move-object v0, p0

    move-object v3, p4

    move-object v4, p5

    move-object v1, p6

    .line 4048
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->restorePermissionState(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;I)V

    return-void
.end method

.method public final synthetic lambda$writeLegacyPermissionStateTEMP$16([ILcom/android/server/pm/PackageSetting;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 4548
    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)Lcom/android/server/pm/PackageSetting;

    .line 4550
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4551
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getSharedUserAppId()I

    move-result v4

    .line 4552
    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManagerInternal;->getSharedUserApi(I)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v5

    if-nez v5, :cond_0

    .line 4554
    const-string v0, "PermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing shared user Api for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4557
    :cond_0
    invoke-interface {v5}, Lcom/android/server/pm/pkg/SharedUserApi;->getSharedUserLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v4

    goto :goto_0

    .line 4559
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v4

    .line 4561
    :goto_0
    invoke-virtual {v4}, Lcom/android/server/pm/permission/LegacyPermissionState;->reset()V

    .line 4562
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v5

    .line 4564
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v6

    .line 4565
    :try_start_0
    array-length v7, v1

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_6

    aget v9, v1, v8

    .line 4566
    iget-object v10, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v10, v9}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v10

    if-nez v10, :cond_2

    .line 4568
    const-string v10, "PermissionManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Missing user state for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 4572
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/pm/permission/UserPermissionState;->areInstallPermissionsFixed(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    .line 4573
    invoke-virtual {v2, v11}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)Lcom/android/server/pm/PackageSetting;

    .line 4576
    :cond_3
    invoke-virtual {v10, v5}, Lcom/android/server/pm/permission/UserPermissionState;->getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v10

    if-nez v10, :cond_4

    .line 4578
    const-string v10, "PermissionManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Missing permission state for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " and user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4583
    :cond_4
    invoke-virtual {v10}, Lcom/android/server/pm/permission/UidPermissionState;->isMissing()Z

    move-result v11

    invoke-virtual {v4, v11, v9}, Lcom/android/server/pm/permission/LegacyPermissionState;->setMissing(ZI)V

    .line 4584
    invoke-virtual {v10}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionStates()Ljava/util/List;

    move-result-object v10

    .line 4585
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    move v12, v3

    :goto_2
    if-ge v12, v11, :cond_5

    .line 4587
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/permission/PermissionState;

    .line 4589
    new-instance v14, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 4590
    invoke-virtual {v13}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v15

    .line 4591
    invoke-virtual {v13}, Lcom/android/server/pm/permission/PermissionState;->getPermission()Lcom/android/server/pm/permission/Permission;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v3

    .line 4592
    invoke-virtual {v13}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v13

    invoke-direct {v14, v15, v3, v0, v13}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;ZZI)V

    .line 4593
    invoke-virtual {v4, v14, v9}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 4596
    :cond_6
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_4
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method public final logPermission(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4450
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 4451
    invoke-virtual {v0, p3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    const/16 p1, 0x4d9

    .line 4452
    invoke-virtual {v0, p1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 4454
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public final mayManageRolePermission(I)Z
    .locals 0

    .line 1668
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1669
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1674
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object p0

    .line 1675
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final mergePermissionState(ILcom/android/server/pm/permission/PermissionState;Lcom/android/server/pm/permission/PermissionState;)Landroid/util/Pair;
    .locals 9

    .line 4793
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v0

    .line 4794
    invoke-virtual {p0, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isEffectivelyGranted(Lcom/android/server/pm/permission/PermissionState;)Z

    move-result p3

    .line 4796
    invoke-virtual {p2}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v1

    .line 4797
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isEffectivelyGranted(Lcom/android/server/pm/permission/PermissionState;)Z

    move-result v2

    or-int v3, v0, v1

    const v4, 0x80003

    and-int/2addr v4, v0

    and-int/lit16 v5, v3, 0x3800

    or-int/2addr v4, v5

    and-int/lit16 v5, v4, 0x3800

    if-nez v5, :cond_0

    or-int/lit16 v4, v4, 0x4000

    :cond_0
    const v5, 0x8034

    and-int v6, v3, v5

    or-int/2addr v4, v6

    if-nez v6, :cond_1

    and-int/lit16 v6, v3, 0x80

    or-int/2addr v4, v6

    :cond_1
    and-int/lit8 v6, v4, 0x14

    if-nez v6, :cond_3

    const v6, 0x88023

    and-int/2addr v6, v4

    if-nez v6, :cond_2

    .line 4826
    sget-object v6, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NOTIFICATION_PERMISSIONS:Ljava/util/List;

    .line 4827
    invoke-virtual {p2}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    and-int/lit8 v5, v3, 0x40

    :goto_0
    or-int/2addr v4, v5

    goto :goto_1

    :cond_2
    and-int/2addr v5, v4

    if-nez v5, :cond_3

    and-int/lit8 v5, v0, 0x40

    goto :goto_0

    :cond_3
    :goto_1
    and-int/lit8 v5, v4, 0x10

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    :cond_4
    :goto_2
    move v7, v6

    goto :goto_4

    :cond_5
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    and-int/lit8 v5, v1, 0x4

    const/4 v7, 0x0

    if-eqz v5, :cond_9

    if-nez p3, :cond_7

    if-eqz v2, :cond_8

    :cond_7
    move v7, v6

    :cond_8
    if-eq p3, v2, :cond_10

    and-int/lit8 v4, v4, -0x5

    goto :goto_4

    :cond_9
    const v5, 0x8020

    and-int v8, v0, v5

    if-eqz v8, :cond_a

    goto :goto_3

    :cond_a
    and-int/2addr v5, v1

    if-eqz v5, :cond_b

    if-nez p3, :cond_4

    if-eqz v2, :cond_10

    goto :goto_2

    :cond_b
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_c

    goto :goto_3

    :cond_c
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_f

    if-nez p3, :cond_d

    if-eqz v2, :cond_e

    :cond_d
    move v7, v6

    :cond_e
    if-eqz p3, :cond_10

    and-int/lit16 v4, v4, -0x81

    goto :goto_4

    :cond_f
    :goto_3
    move v7, p3

    :cond_10
    :goto_4
    if-nez v7, :cond_11

    const/high16 v0, 0x20000

    and-int/2addr v0, v3

    or-int/2addr v0, v4

    and-int/lit16 v0, v0, -0x81

    goto :goto_5

    :cond_11
    and-int/lit8 v0, v4, -0x41

    :goto_5
    if-eq v7, p3, :cond_12

    const p3, -0x80004

    and-int/2addr v0, p3

    :cond_12
    if-nez v7, :cond_13

    .line 4898
    invoke-virtual {p2}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4899
    invoke-virtual {p3, p1}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result p1

    .line 4897
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPermissionSplitFromNonRuntime(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_13

    or-int/lit8 v0, v0, 0x8

    goto :goto_6

    :cond_13
    move v6, v7

    .line 4910
    :goto_6
    new-instance p0, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public onPackageAdded(Lcom/android/server/pm/pkg/PackageState;ZLcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 1

    .line 5270
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5271
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    .line 5272
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5273
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->onPackageAddedInternal(Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;ZLcom/android/server/pm/pkg/AndroidPackage;)V

    return-void
.end method

.method public final onPackageAddedInternal(Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;ZLcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 9

    .line 4676
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getAdoptPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 4679
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getAdoptPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 4680
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getAdoptPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4681
    invoke-virtual {p0, v2, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->canAdoptPermissionsInternal(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4682
    const-string v3, "PermissionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adopting permissions from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4683
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4682
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4684
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v3

    .line 4685
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/server/pm/permission/PermissionRegistry;->transferPermissions(Ljava/lang/String;Ljava/lang/String;)V

    .line 4686
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 4693
    const-string v0, "PermissionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission groups from package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ignored: instant apps cannot define new permission groups."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4696
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->addAllPermissionGroupsInternal(Lcom/android/server/pm/pkg/AndroidPackage;)V

    :goto_2
    if-eqz p3, :cond_3

    .line 4705
    const-string p1, "PermissionManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permissions from package "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ignored: instant apps cannot define new permissions."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_3
    move-object v8, p1

    goto :goto_4

    .line 4708
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->addAllPermissionsInternal(Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :goto_4
    if-eqz p4, :cond_4

    :goto_5
    move v4, v1

    goto :goto_6

    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    .line 4713
    :goto_6
    invoke-static {v8}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    xor-int/lit8 v7, p1, 0x1

    if-nez v4, :cond_6

    if-nez p1, :cond_5

    goto :goto_7

    :cond_5
    return-void

    .line 4718
    :cond_6
    :goto_7
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda16;

    move-object v3, p0

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ZLcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/util/List;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V
    .locals 5

    .line 5280
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5281
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-gez p4, :cond_1

    if-ne p4, v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v0

    .line 5282
    :goto_1
    const-string/jumbo v4, "userId"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-ne p4, v2, :cond_2

    .line 5284
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object p4

    goto :goto_2

    .line 5285
    :cond_2
    new-array v0, v0, [I

    aput p4, v0, v1

    move-object p4, v0

    .line 5286
    :goto_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->onPackageInstalledInternal(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;[I)V

    return-void
.end method

.method public final onPackageInstalledInternal(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;[I)V
    .locals 4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 5012
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->handleAppIdMigration(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    .line 5014
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 5015
    array-length p2, p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget v1, p4, v0

    .line 5017
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->getAllowlistedRestrictedPermissions()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    .line 5016
    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->addAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;II)V

    .line 5019
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->getPermissionStates()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->grantRequestedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/util/ArrayMap;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPackageRemoved(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0

    .line 5291
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5292
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->onPackageRemovedInternal(Lcom/android/server/pm/pkg/AndroidPackage;)V

    return-void
.end method

.method public final onPackageRemovedInternal(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0

    .line 5038
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->removeAllPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;)V

    return-void
.end method

.method public onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;I)V
    .locals 5

    .line 5299
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5300
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5301
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-gez p6, :cond_1

    if-ne p6, v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v0

    .line 5302
    :goto_1
    const-string/jumbo v4, "userId"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-ne p6, v2, :cond_2

    .line 5304
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object p6

    goto :goto_2

    .line 5305
    :cond_2
    new-array v0, v0, [I

    aput p6, v0, v1

    move-object p6, v0

    .line 5306
    :goto_2
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->onPackageUninstalledInternal(Ljava/lang/String;ILcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;[I)V

    return-void
.end method

.method public final onPackageUninstalledInternal(Ljava/lang/String;ILcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;[I)V
    .locals 3

    .line 5048
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 5052
    invoke-virtual {p3, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 5056
    array-length p1, p6

    :goto_0
    if-ge v0, p1, :cond_2

    aget p2, p6, v0

    .line 5057
    invoke-virtual {p0, p4, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 5061
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 5062
    array-length p3, p6

    :goto_1
    if-ge v0, p3, :cond_2

    aget v1, p6, v0

    .line 5063
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5064
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->removeUidStateAndResetPackageInstallPermissionsFixed(ILjava/lang/String;I)V

    goto :goto_2

    .line 5071
    :cond_1
    invoke-virtual {p0, p4, p2, p5, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeSharedUserPermissionsForLeavingPackageInternal(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/util/List;I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onStorageVolumeMounted(Ljava/lang/String;Z)V
    .locals 0

    .line 5203
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updateAllPermissions(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSystemReady()V
    .locals 4

    .line 4392
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updateAllPermissions(Ljava/lang/String;Z)V

    .line 4394
    const-class v0, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PermissionPolicyInternal;

    .line 4396
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PermissionPolicyInternal;->setOnInitializedCallback(Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;)V

    .line 4401
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    const/4 v1, 0x1

    .line 4402
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mSystemReady:Z

    .line 4404
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-nez v1, :cond_0

    .line 4408
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4410
    new-instance v0, Landroid/permission/PermissionControllerManager;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 4411
    invoke-static {}, Lcom/android/server/PermissionThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 4412
    const-class v0, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PermissionPolicyInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 4405
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signature|privileged permissions not in privapp-permissions allowlist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4408
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public onUserCreated(I)V
    .locals 1

    int-to-float p1, p1

    .line 5262
    const-string/jumbo v0, "userId"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 5264
    sget-object p1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updateAllPermissions(Ljava/lang/String;Z)V

    return-void
.end method

.method public onUserRemoved(I)V
    .locals 2

    int-to-float v0, p1

    .line 2450
    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 2451
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 2452
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/DevicePermissionState;->removeUserState(I)V

    .line 2453
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 8

    .line 614
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 615
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 620
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 621
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v3

    .line 622
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroup(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v4

    if-eqz p1, :cond_1

    if-nez v4, :cond_1

    .line 624
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 626
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/permission/Permission;

    .line 627
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 628
    invoke-virtual {v6, p2}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(I)Landroid/content/pm/PermissionInfo;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 631
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 633
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-eqz v4, :cond_4

    .line 634
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 635
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 634
    invoke-virtual {p2, v3, v0, p1, v4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result p2

    if-eqz p2, :cond_4

    return-object v2

    .line 639
    :cond_4
    new-instance p2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;II)V

    invoke-interface {v1, p2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-object v1

    .line 631
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public readLegacyPermissionStateTEMP()V
    .locals 3

    .line 4495
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object v0

    .line 4496
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[I)V

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->forEachPackageState(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final readLegacyPermissionStatesLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/util/Collection;)V
    .locals 3

    .line 4529
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 4530
    invoke-virtual {v0}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4531
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PermissionManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4536
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isGranted()Z

    move-result v1

    .line 4537
    invoke-virtual {v0}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getFlags()I

    move-result v0

    .line 4536
    invoke-virtual {p1, v2, v1, v0}, Lcom/android/server/pm/permission/UidPermissionState;->putPermissionState(Lcom/android/server/pm/permission/Permission;ZI)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public readLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_4

    if-nez v1, :cond_0

    .line 4606
    invoke-virtual {p1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->getPermissions()Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 4607
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->getPermissionTrees()Ljava/util/List;

    move-result-object v2

    .line 4608
    :goto_1
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v3

    .line 4609
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move v5, v0

    :goto_2
    if-ge v5, v4, :cond_3

    .line 4611
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/permission/LegacyPermission;

    .line 4612
    new-instance v7, Lcom/android/server/pm/permission/Permission;

    .line 4613
    invoke-virtual {v6}, Lcom/android/server/pm/permission/LegacyPermission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/server/pm/permission/LegacyPermission;->getType()I

    move-result v6

    invoke-direct {v7, v8, v6}, Lcom/android/server/pm/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;I)V

    if-nez v1, :cond_2

    .line 4620
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 4621
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v8

    .line 4620
    invoke-virtual {v6, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 4623
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 4624
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getRawGids()[I

    move-result-object v8

    .line 4625
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->areGidsPerUser()Z

    move-result v6

    .line 4624
    invoke-virtual {v7, v8, v6}, Lcom/android/server/pm/permission/Permission;->setGids([IZ)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    .line 4627
    :cond_1
    :goto_3
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermission(Lcom/android/server/pm/permission/Permission;)V

    goto :goto_4

    .line 4629
    :cond_2
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermissionTree(Lcom/android/server/pm/permission/Permission;)V

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4632
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_5
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_4
    return-void
.end method

.method public final removeAllPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 8

    .line 2405
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 2406
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-ge v3, v1, :cond_4

    .line 2409
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 2410
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    if-nez v6, :cond_0

    .line 2412
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTree(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    :goto_1
    if-eqz v6, :cond_2

    .line 2414
    invoke-virtual {v6, v5}, Lcom/android/server/pm/permission/Permission;->isPermission(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2415
    invoke-virtual {v6, v2}, Lcom/android/server/pm/permission/Permission;->setPermissionInfo(Landroid/content/pm/PermissionInfo;)V

    .line 2416
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v6, :cond_2

    if-nez v4, :cond_1

    .line 2418
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v6, 0x100

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_2

    :cond_1
    const/16 v6, 0x20

    .line 2420
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2422
    :goto_2
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2425
    :cond_2
    invoke-static {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->isAppOp(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2427
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->removeAppOpPermissionPackage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    .line 2431
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v1, :cond_5

    const-string v1, "PermissionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Permissions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    :cond_5
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2436
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 2437
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->isAppOp()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2438
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 2439
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2438
    invoke-virtual {v3, v2, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->removeAppOpPermissionPackage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2445
    :cond_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 2

    .line 1240
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1242
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1247
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1248
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1249
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;II)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 2

    .line 1077
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1080
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->removeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    return-void

    .line 1078
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Instant applications don\'t have access to this method"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removePermission(Ljava/lang/String;)V
    .locals 3

    .line 680
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 681
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 684
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 685
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/pm/permission/PermissionRegistry;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/Permission;

    .line 686
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    if-nez v0, :cond_0

    .line 688
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 690
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isDynamic()Z

    move-result v0

    if-nez v0, :cond_1

    .line 692
    const-string p0, "PermissionManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 696
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->removePermission(Ljava/lang/String;)V

    .line 697
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 698
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    return-void

    .line 697
    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 682
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Instant applications don\'t have access to this method"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeUidStateAndResetPackageInstallPermissionsFixed(ILjava/lang/String;I)V
    .locals 1

    .line 4483
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 4484
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {p0, p3}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object p0

    if-nez p0, :cond_0

    .line 4486
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 4488
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UserPermissionState;->removeUidState(I)V

    const/4 p1, 0x0

    .line 4489
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V

    .line 4490
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public resetRuntimePermissions(Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .locals 2

    .line 5208
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-float v0, p2

    .line 5209
    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 5210
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    return-void
.end method

.method public resetRuntimePermissionsForUser(I)V
    .locals 2

    int-to-float v0, p1

    .line 5215
    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    const/4 v0, 0x0

    .line 5216
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    return-void
.end method

.method public final resetRuntimePermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .locals 9

    const/4 v0, 0x1

    .line 1687
    new-array v6, v0, [Z

    .line 1688
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 1689
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 1690
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 1692
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;[Z)V

    if-eqz p1, :cond_0

    .line 1745
    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    goto :goto_0

    .line 1747
    :cond_0
    iget-object p0, v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance p1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;

    invoke-direct {p1, v2, p2, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    :goto_0
    const/4 p0, 0x0

    .line 1752
    aget-boolean p1, v6, p0

    if-eqz p1, :cond_1

    .line 1753
    iget-object p1, v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    invoke-virtual {p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionRemoved()V

    .line 1758
    :cond_1
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1759
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result p1

    move p2, p0

    :goto_1
    if-ge p2, p1, :cond_2

    .line 1761
    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v1

    .line 1762
    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v6

    .line 1764
    iget-object v7, v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    invoke-virtual {v7, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 1767
    iget-object v7, v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda11;

    invoke-direct {v8, v1, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda11;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1772
    :cond_2
    iget-object p1, v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Landroid/util/ArraySet;)[I

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    .line 1774
    iget-object p0, v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Landroid/util/ArraySet;)[I

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    return-void
.end method

.method public final resetRuntimePermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .locals 13

    .line 1791
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1792
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 1793
    iget-boolean v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mIsLeanback:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NOTIFICATION_PERMISSIONS:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1798
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v3

    .line 1799
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1801
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_3

    .line 1804
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1805
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_0

    .line 1807
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v10

    .line 1808
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 1811
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1812
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1811
    invoke-virtual {v0, v3, p2}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1813
    array-length v3, v0

    const/4 v4, 0x0

    if-lez v3, :cond_5

    .line 1815
    array-length v3, v0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_5

    aget-object v6, v0, v5

    .line 1816
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1817
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1818
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1819
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    const/16 v0, 0x3e8

    .line 1830
    invoke-virtual {p0, v1, v2, v0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v11

    .line 1835
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v1, v5, v6, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 1836
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v12

    const/16 v0, 0x17

    if-ge v12, v0, :cond_6

    if-eqz v10, :cond_6

    const/16 v4, 0x48

    :cond_6
    const/16 v5, 0x3e8

    const/4 v7, 0x0

    const v3, 0x9004b

    move-object v0, p0

    move v6, p2

    move-object/from16 v8, p3

    .line 1841
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    if-nez v10, :cond_7

    goto/16 :goto_0

    :cond_7
    and-int/lit8 v3, v11, 0x14

    if-eqz v3, :cond_8

    goto/16 :goto_0

    :cond_8
    and-int/lit8 v3, v11, 0x20

    if-nez v3, :cond_a

    const v3, 0x8000

    and-int/2addr v3, v11

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_9
    and-int/lit8 v3, v4, 0x40

    if-nez v3, :cond_0

    .line 1866
    invoke-virtual {p0, v2, v12}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPermissionSplitFromNonRuntime(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v4, 0x3e8

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v5, p2

    move-object/from16 v7, p3

    .line 1868
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    goto/16 :goto_0

    :cond_a
    :goto_2
    const/4 v3, 0x0

    const/16 v4, 0x3e8

    move-object v0, p0

    move v5, p2

    move-object/from16 v6, p3

    .line 1859
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    goto/16 :goto_0

    .line 1808
    :goto_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_b
    return-void
.end method

.method public restoreDelayedRuntimePermissions(Ljava/lang/String;I)V
    .locals 4

    .line 2053
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-float v0, p2

    .line 2054
    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 2055
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 2056
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2057
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 2059
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2060
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 2061
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {}, Lcom/android/server/PermissionThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;I)V

    .line 2060
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/permission/PermissionControllerManager;->applyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void

    .line 2059
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final restorePermissionState(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;I)V
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v9, p3

    move/from16 v1, p5

    .line 2536
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2537
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    if-nez v11, :cond_0

    goto/16 :goto_3b

    :cond_0
    const/4 v2, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ne v1, v2, :cond_1

    .line 2542
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object v1

    move-object v14, v1

    goto :goto_0

    .line 2543
    :cond_1
    new-array v2, v13, [I

    aput v1, v2, v12

    move-object v14, v2

    .line 2547
    :goto_0
    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->EMPTY_INT_ARRAY:[I

    .line 2548
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104017b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2552
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 2553
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v16

    .line 2554
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, Ljava/lang/String;

    .line 2556
    iget-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v13

    move-object/from16 p5, v1

    .line 2557
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1, v12}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v1

    .line 2558
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-nez v1, :cond_3

    :cond_2
    :goto_2
    move-object/from16 v1, p5

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_1

    .line 2562
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2563
    invoke-virtual {v0, v7, v11, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPrivilegedPermissionAllowlist(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;)Z

    move-result v13

    if-eqz v13, :cond_5

    if-nez v4, :cond_4

    .line 2565
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 2567
    :cond_4
    invoke-virtual {v4, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2569
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isSignature()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual {v0, v7, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionBySignature(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/Permission;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 2570
    invoke-virtual {v0, v7, v11, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z

    move-result v13

    if-eqz v13, :cond_8

    :cond_6
    if-nez v6, :cond_7

    .line 2573
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 2575
    :cond_7
    invoke-virtual {v6, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2577
    :cond_8
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2578
    invoke-virtual {v0, v7, v11, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v5, :cond_9

    .line 2581
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 2583
    :cond_9
    invoke-virtual {v5, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 2558
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    :cond_a
    move-object/from16 p5, v1

    .line 2587
    new-instance v12, Landroid/util/SparseBooleanArray;

    invoke-direct {v12}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 2588
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    if-eqz v1, :cond_c

    .line 2589
    array-length v1, v14

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_c

    aget v13, v14, v3

    move/from16 v19, v1

    .line 2590
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-virtual {v1, v13}, Lcom/android/server/policy/PermissionPolicyInternal;->isInitialized(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    .line 2591
    invoke-virtual {v12, v13, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_b
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v19

    goto :goto_3

    .line 2599
    :cond_c
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    move-result v1

    if-nez v1, :cond_d

    .line 2600
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v1

    .line 2601
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/Set;

    move-result-object v3

    .line 2602
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v13

    move-object/from16 v19, v11

    :goto_4
    move-object v8, v1

    goto :goto_7

    .line 2604
    :cond_d
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2605
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 2607
    iget-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2608
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->getSharedUserAppId()I

    move-result v10

    invoke-virtual {v13, v10}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackages(I)Landroid/util/ArraySet;

    move-result-object v10

    .line 2609
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v13

    const/16 v19, 0x2710

    move/from16 v8, v19

    move-object/from16 v19, v11

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v13, :cond_f

    .line 2612
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface/range {v20 .. v20}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v20

    if-nez v20, :cond_e

    move-object/from16 v21, v10

    goto :goto_6

    :cond_e
    move-object/from16 v21, v10

    .line 2617
    invoke-interface/range {v20 .. v20}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v10

    .line 2616
    invoke-interface {v1, v10}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 2619
    invoke-interface/range {v20 .. v20}, Lcom/android/server/pm/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/Set;

    move-result-object v10

    .line 2618
    invoke-interface {v3, v10}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 2621
    invoke-interface/range {v20 .. v20}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v10

    .line 2620
    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    :goto_6
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v10, v21

    goto :goto_5

    :cond_f
    move v13, v8

    goto :goto_4

    .line 2625
    :goto_7
    iget-object v10, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v10

    .line 2626
    :try_start_2
    array-length v11, v14

    move-object/from16 v1, p5

    move-object/from16 p5, v14

    const/4 v14, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_8
    if-ge v14, v11, :cond_5c

    move-object/from16 v22, v3

    aget v3, p5, v14

    move/from16 v23, v11

    .line 2627
    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v11, v3}, Lcom/android/server/pm/permission/DevicePermissionState;->getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v11

    move/from16 v24, v14

    .line 2628
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v14

    invoke-virtual {v11, v14}, Lcom/android/server/pm/permission/UserPermissionState;->getOrCreateUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v14

    .line 2630
    invoke-virtual {v14}, Lcom/android/server/pm/permission/UidPermissionState;->isMissing()Z

    move-result v25

    move-object/from16 v26, v5

    if-eqz v25, :cond_15

    .line 2631
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_9
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_14

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v5, v27

    check-cast v5, Ljava/lang/String;

    move-object/from16 v27, v2

    .line 2632
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, v5}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2

    if-nez v2, :cond_10

    move-object/from16 v2, v27

    goto :goto_9

    .line 2636
    :cond_10
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v29, v6

    const-string v6, "android"

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2637
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRemoved()Z

    move-result v5

    if-nez v5, :cond_13

    .line 2638
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isHardOrSoftRestricted()Z

    move-result v5

    if-nez v5, :cond_12

    .line 2639
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isImmutablyRestricted()Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_b

    :cond_11
    :goto_a
    const/16 v5, 0x17

    goto :goto_c

    :catchall_1
    move-exception v0

    goto/16 :goto_3c

    :cond_12
    :goto_b
    const/16 v5, 0x2000

    .line 2640
    invoke-virtual {v14, v2, v5, v5}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    goto :goto_a

    :goto_c
    if-ge v13, v5, :cond_13

    const/16 v5, 0x48

    .line 2645
    invoke-virtual {v14, v2, v5, v5}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 2650
    invoke-virtual {v14, v2}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    :cond_13
    move-object/from16 v2, v27

    move-object/from16 v6, v29

    goto :goto_9

    :cond_14
    move-object/from16 v27, v2

    move-object/from16 v29, v6

    const/4 v2, 0x0

    .line 2655
    invoke-virtual {v14, v2}, Lcom/android/server/pm/permission/UidPermissionState;->setMissing(Z)V

    .line 2656
    invoke-static {v1, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    goto :goto_d

    :cond_15
    move-object/from16 v27, v2

    move-object/from16 v29, v6

    :goto_d
    if-eqz p2, :cond_17

    .line 2664
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v11, v2, v5}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V

    .line 2665
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    move-result v2

    if-nez v2, :cond_16

    .line 2666
    new-instance v2, Lcom/android/server/pm/permission/UidPermissionState;

    invoke-direct {v2, v14}, Lcom/android/server/pm/permission/UidPermissionState;-><init>(Lcom/android/server/pm/permission/UidPermissionState;)V

    .line 2667
    invoke-virtual {v14}, Lcom/android/server/pm/permission/UidPermissionState;->reset()V

    goto :goto_e

    .line 2674
    :cond_16
    invoke-virtual {v0, v8, v14}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeUnusedSharedUserPermissionsLocked(Ljava/util/Collection;Lcom/android/server/pm/permission/UidPermissionState;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2676
    invoke-static {v1, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    move-object v2, v14

    const/16 v21, 0x1

    goto :goto_e

    :cond_17
    const/4 v5, 0x0

    :cond_18
    move-object v2, v14

    .line 2682
    :goto_e
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 2683
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v1

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2685
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object/from16 v30, v5

    move-object/from16 v5, v25

    const/16 v25, 0x0

    :goto_f
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_55

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v32, v8

    move-object/from16 v8, v31

    check-cast v8, Ljava/lang/String;

    move/from16 v31, v13

    .line 2686
    iget-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v13, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v13

    move-object/from16 v33, v4

    .line 2688
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v4

    move-object/from16 v34, v5

    const/16 v5, 0x17

    if-lt v4, v5, :cond_19

    const/4 v4, 0x1

    goto :goto_10

    :cond_19
    const/4 v4, 0x0

    .line 2690
    :goto_10
    sget-boolean v28, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v28, :cond_1a

    if-eqz v13, :cond_1a

    .line 2691
    const-string v5, "PermissionManager"

    move/from16 v35, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v36, v3

    const-string v3, "Package "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " checking "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_1a
    move/from16 v36, v3

    move/from16 v35, v4

    :goto_11
    if-nez v13, :cond_1c

    if-eqz v9, :cond_1b

    .line 2700
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2699
    invoke-virtual {v9, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2701
    :cond_1b
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v3, :cond_1e

    .line 2702
    const-string v3, "PermissionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 2711
    :cond_1c
    invoke-virtual {v2, v8}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 2712
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2714
    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2715
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v3, :cond_1d

    .line 2716
    const-string v3, "PermissionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is newly added for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    :cond_1d
    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->isRuntimeOnly()Z

    move-result v3

    if-eqz v3, :cond_1f

    if-nez v35, :cond_1f

    .line 2733
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v3, :cond_1e

    .line 2734
    const-string v3, "PermissionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Denying runtime-only permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    :goto_12
    move/from16 v13, v31

    move-object/from16 v8, v32

    move-object/from16 v4, v33

    move-object/from16 v5, v34

    move/from16 v3, v36

    goto/16 :goto_f

    .line 2740
    :cond_1f
    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2743
    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->isAppOp()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2744
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/server/pm/permission/PermissionRegistry;->addAppOpPermissionPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 2748
    :cond_20
    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->isNormal()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 2752
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v4

    if-nez v4, :cond_21

    .line 2753
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2752
    invoke-virtual {v11, v4}, Lcom/android/server/pm/permission/UserPermissionState;->areInstallPermissionsFixed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 2757
    invoke-static {v3, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isCompatPlatformPermissionForPackage(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v4

    if-nez v4, :cond_21

    const/4 v4, 0x0

    goto :goto_13

    :cond_21
    const/4 v4, 0x1

    .line 2766
    :goto_13
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move/from16 v37, v4

    const-string v4, "com.viwoods."

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_22

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 2767
    :cond_22
    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;

    move-result-object v4

    if-nez v4, :cond_23

    .line 2768
    invoke-virtual {v14, v13}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    .line 2773
    :cond_23
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v4, :cond_24

    .line 2774
    const-string v4, "PermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v38, v6

    const-string v6, "Considering granting permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2775
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2774
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_24
    move-object/from16 v38, v6

    .line 2778
    :goto_14
    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->isNormal()Z

    move-result v4

    if-nez v4, :cond_25

    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->isSignature()Z

    move-result v4

    if-nez v4, :cond_25

    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v4

    if-eqz v4, :cond_26

    :cond_25
    move-object/from16 v4, v34

    move/from16 v5, v36

    goto/16 :goto_24

    .line 2827
    :cond_26
    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 2828
    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->isHardRestricted()Z

    move-result v4

    .line 2829
    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->isSoftRestricted()Z

    move-result v6

    move/from16 v5, v36

    .line 2835
    invoke-virtual {v12, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v36

    .line 2837
    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;

    move-result-object v37

    if-eqz v37, :cond_27

    .line 2838
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v39

    move/from16 v40, v39

    move/from16 v39, v4

    move/from16 v4, v40

    :goto_15
    move/from16 v40, v6

    goto :goto_16

    :cond_27
    move/from16 v39, v4

    const/4 v4, 0x0

    goto :goto_15

    .line 2843
    :goto_16
    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v6

    and-int/lit16 v6, v6, 0x3800

    if-eqz v6, :cond_28

    const/16 v41, 0x1

    goto :goto_17

    :cond_28
    const/16 v41, 0x0

    .line 2846
    :goto_17
    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2845
    invoke-virtual {v2, v6}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v6

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_29

    const/4 v6, 0x1

    goto :goto_18

    :cond_29
    const/4 v6, 0x0

    :goto_18
    if-eqz v35, :cond_34

    if-eqz v36, :cond_2c

    if-eqz v39, :cond_2c

    if-nez v41, :cond_2d

    if-eqz v37, :cond_2a

    .line 2852
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v42

    if-eqz v42, :cond_2a

    .line 2853
    invoke-virtual {v14, v13}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v42

    if-eqz v42, :cond_2a

    const/16 v42, 0x1

    goto :goto_19

    :cond_2a
    const/16 v42, 0x0

    :goto_19
    if-nez v6, :cond_2b

    :goto_1a
    or-int/lit16 v4, v4, 0x4000

    move/from16 v43, v4

    const/16 v42, 0x1

    goto :goto_1b

    :cond_2b
    move/from16 v43, v4

    goto :goto_1b

    :cond_2c
    if-eqz v36, :cond_2d

    if-eqz v40, :cond_2d

    if-nez v41, :cond_2d

    if-nez v6, :cond_2d

    goto :goto_1a

    :cond_2d
    move/from16 v43, v4

    const/16 v42, 0x0

    .line 2872
    :goto_1b
    sget-object v4, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NOTIFICATION_PERMISSIONS:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    and-int/lit8 v3, v43, 0x40

    if-eqz v3, :cond_2e

    and-int/lit8 v3, v43, -0x41

    move/from16 v43, v3

    const/16 v42, 0x1

    :cond_2e
    and-int/lit8 v3, v43, 0x8

    if-eqz v3, :cond_2f

    .line 2881
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3

    .line 2880
    invoke-virtual {v0, v8, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPermissionSplitFromNonRuntime(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_2f

    and-int/lit8 v43, v43, -0x9

    :goto_1c
    const/16 v42, 0x1

    goto :goto_1d

    :cond_2f
    if-eqz v36, :cond_30

    if-eqz v39, :cond_30

    if-eqz v41, :cond_31

    :cond_30
    if-eqz v37, :cond_31

    .line 2887
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 2888
    invoke-virtual {v14, v13}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v3

    if-nez v3, :cond_31

    goto :goto_1c

    .line 2893
    :cond_31
    :goto_1d
    iget-boolean v3, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mIsLeanback:Z

    if-eqz v3, :cond_33

    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 2894
    invoke-virtual {v14, v13}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    if-eqz v37, :cond_32

    .line 2895
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v3

    if-nez v3, :cond_33

    .line 2896
    :cond_32
    invoke-virtual {v14, v13}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v3

    if-eqz v3, :cond_33

    move/from16 v3, v43

    :goto_1e
    const/16 v42, 0x1

    goto :goto_20

    :cond_33
    move/from16 v3, v43

    goto :goto_20

    :cond_34
    if-nez v37, :cond_35

    .line 2904
    const-string v3, "android"

    .line 2905
    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 2904
    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 2906
    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_35

    or-int/lit8 v4, v4, 0x48

    const/4 v3, 0x1

    goto :goto_1f

    :cond_35
    const/4 v3, 0x0

    .line 2914
    :goto_1f
    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_36

    .line 2915
    invoke-virtual {v14, v13}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v8

    if-eqz v8, :cond_36

    const/4 v3, 0x1

    :cond_36
    if-eqz v36, :cond_38

    if-nez v39, :cond_37

    if-eqz v40, :cond_38

    :cond_37
    if-nez v41, :cond_38

    if-nez v6, :cond_38

    or-int/lit16 v3, v4, 0x4000

    goto :goto_1e

    :cond_38
    move/from16 v42, v3

    move v3, v4

    :goto_20
    if-eqz v36, :cond_3c

    if-nez v39, :cond_39

    if-eqz v40, :cond_3a

    :cond_39
    if-eqz v41, :cond_3c

    :cond_3a
    if-eqz v6, :cond_3c

    and-int/lit16 v3, v3, -0x4001

    if-nez v35, :cond_3b

    or-int/lit8 v3, v3, 0x40

    :cond_3b
    const/16 v42, 0x1

    :cond_3c
    if-eqz v42, :cond_3d

    move-object/from16 v4, v34

    .line 2944
    invoke-static {v4, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v4

    :goto_21
    const v6, 0x3fbff

    goto :goto_22

    :cond_3d
    move-object/from16 v4, v34

    goto :goto_21

    .line 2947
    :goto_22
    invoke-virtual {v14, v13, v6, v3}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    :goto_23
    move-object/from16 v34, v1

    move-object/from16 v8, v19

    goto/16 :goto_36

    :cond_3e
    move-object/from16 v4, v34

    move/from16 v5, v36

    .line 2950
    sget-object v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown permission protection "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->getProtection()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for permission "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2951
    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2950
    invoke-static {v3, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 2779
    :goto_24
    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->isNormal()Z

    move-result v6

    if-eqz v6, :cond_40

    if-nez v37, :cond_3f

    goto :goto_25

    :cond_3f
    move-object/from16 v6, v26

    move-object/from16 v0, v27

    goto/16 :goto_2c

    .line 2780
    :cond_40
    :goto_25
    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->isSignature()Z

    move-result v6

    if-eqz v6, :cond_47

    .line 2781
    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v6

    if-eqz v6, :cond_42

    move-object/from16 v6, v33

    invoke-static {v6, v8}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_41

    :goto_26
    move-object/from16 v0, v29

    goto :goto_27

    :cond_41
    move-object/from16 v0, v27

    goto :goto_2a

    :cond_42
    move-object/from16 v6, v33

    goto :goto_26

    .line 2783
    :goto_27
    invoke-static {v0, v8}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_46

    .line 2785
    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v29

    if-eqz v29, :cond_43

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    invoke-static {v0, v8}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_44

    goto :goto_28

    :cond_43
    move-object/from16 v29, v0

    move-object/from16 v0, v27

    .line 2787
    :goto_28
    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v27

    if-nez v27, :cond_44

    .line 2788
    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v27

    if-eqz v27, :cond_48

    .line 2789
    :cond_44
    invoke-virtual {v2, v8}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_45

    goto :goto_2a

    :cond_45
    :goto_29
    move-object/from16 v33, v6

    move-object/from16 v6, v26

    goto :goto_2c

    :cond_46
    move-object/from16 v29, v0

    move-object/from16 v0, v27

    goto :goto_29

    :cond_47
    move-object/from16 v0, v27

    move-object/from16 v6, v33

    .line 2791
    :cond_48
    :goto_2a
    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v27

    if-eqz v27, :cond_4a

    .line 2792
    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v27

    if-eqz v27, :cond_49

    invoke-static {v6, v8}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4a

    :cond_49
    move-object/from16 v33, v6

    move-object/from16 v6, v26

    goto :goto_2b

    :cond_4a
    move-object/from16 v33, v6

    move-object/from16 v6, v26

    goto :goto_2e

    .line 2794
    :goto_2b
    invoke-static {v6, v8}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_4d

    .line 2796
    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v26

    if-eqz v26, :cond_4b

    invoke-static {v0, v8}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_4c

    .line 2798
    :cond_4b
    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v26

    if-nez v26, :cond_4c

    .line 2799
    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v26

    if-eqz v26, :cond_4f

    .line 2800
    :cond_4c
    invoke-virtual {v2, v8}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 2803
    :cond_4d
    :goto_2c
    invoke-virtual {v14, v13}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v8

    move-object/from16 v27, v0

    move-object/from16 v34, v1

    move-object/from16 v26, v6

    if-eqz v8, :cond_4e

    move-object/from16 v8, v19

    :goto_2d
    const/4 v1, 0x1

    goto/16 :goto_33

    :cond_4e
    move-object/from16 v8, v19

    goto/16 :goto_32

    .line 2807
    :cond_4f
    :goto_2e
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v8, :cond_51

    .line 2808
    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_50

    .line 2809
    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->isAppOp()Z

    move-result v26

    if-eqz v26, :cond_51

    :cond_50
    move-object/from16 v27, v0

    goto :goto_2f

    :cond_51
    move-object/from16 v27, v0

    move-object/from16 v34, v1

    move-object/from16 v26, v6

    move-object/from16 v8, v19

    goto :goto_31

    .line 2810
    :goto_2f
    const-string v0, "PermissionManager"

    move-object/from16 v26, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_52

    const-string v8, "Un-granting"

    goto :goto_30

    :cond_52
    const-string v8, "Not granting"

    :goto_30
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " permission "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " from package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " (protectionLevel="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2813
    invoke-virtual {v13}, Lcom/android/server/pm/permission/Permission;->getProtectionLevel()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " flags=0x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v19

    .line 2815
    invoke-static {v7, v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v19

    move-object/from16 v34, v1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2810
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    :goto_31
    invoke-virtual {v14, v13}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v0

    if-eqz v0, :cond_53

    goto :goto_2d

    :cond_53
    :goto_32
    move/from16 v1, v25

    .line 2824
    :goto_33
    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 2825
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v0

    :goto_34
    const v6, 0x3fbff

    goto :goto_35

    :cond_54
    const/4 v0, 0x0

    goto :goto_34

    .line 2826
    :goto_35
    invoke-virtual {v14, v13, v6, v0}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    move/from16 v25, v1

    :goto_36
    move-object/from16 v0, p0

    move v3, v5

    move-object/from16 v19, v8

    move/from16 v13, v31

    move-object/from16 v8, v32

    move-object/from16 v1, v34

    move-object/from16 v6, v38

    move-object v5, v4

    move-object/from16 v4, v33

    goto/16 :goto_f

    :cond_55
    move-object/from16 v33, v4

    move-object v4, v5

    move-object/from16 v38, v6

    move-object/from16 v32, v8

    move/from16 v31, v13

    move-object/from16 v8, v19

    move v5, v3

    if-nez v25, :cond_56

    if-eqz p2, :cond_57

    .line 2956
    :cond_56
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/server/pm/permission/UserPermissionState;->areInstallPermissionsFixed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 2957
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_58

    :cond_57
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 2961
    :cond_58
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x1

    invoke-virtual {v11, v0, v13}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V

    goto :goto_37

    :cond_59
    const/4 v13, 0x1

    :goto_37
    if-eqz v25, :cond_5b

    if-eqz v9, :cond_5a

    if-eqz p2, :cond_5a

    .line 2967
    invoke-static {v4, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    move-object v6, v0

    move-object v1, v2

    :goto_38
    move/from16 v20, v13

    goto :goto_39

    :cond_5a
    move-object v1, v2

    move-object v6, v4

    goto :goto_38

    :cond_5b
    move-object v1, v2

    move-object v6, v4

    .line 2971
    :goto_39
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v14

    move-object v14, v1

    move-object v1, v0

    move-object/from16 v0, p0

    move-object/from16 v3, v22

    move/from16 v4, v31

    const/16 v18, 0x0

    .line 2970
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Ljava/util/Collection;II[I)[I

    move-result-object v6

    move-object/from16 v22, v3

    move/from16 v31, v4

    move-object/from16 v0, p0

    move-object v2, v1

    move-object v3, v7

    move-object v1, v14

    move-object/from16 v4, v38

    .line 2973
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/util/ArraySet;I[I)[I

    move-result-object v1

    add-int/lit8 v14, v24, 0x1

    move-object v7, v3

    move-object/from16 v19, v8

    move-object/from16 v3, v22

    move/from16 v11, v23

    move-object/from16 v5, v26

    move-object/from16 v2, v27

    move-object/from16 v6, v29

    move/from16 v13, v31

    move-object/from16 v8, v32

    move-object/from16 v4, v33

    goto/16 :goto_8

    :cond_5c
    move-object v3, v7

    const/4 v13, 0x1

    const/16 v18, 0x0

    .line 2976
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    move/from16 v8, p2

    move-object/from16 v2, p5

    .line 2978
    invoke-virtual {v0, v3, v8, v2, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkIfLegacyStorageOpsNeedToBeUpdated(Lcom/android/server/pm/pkg/AndroidPackage;Z[I[I)[I

    move-result-object v0

    if-eqz p4, :cond_60

    if-eqz v9, :cond_5d

    if-eqz v8, :cond_5d

    if-nez v20, :cond_5e

    :cond_5d
    if-eqz v21, :cond_5f

    :cond_5e
    move v12, v13

    goto :goto_3a

    :cond_5f
    move/from16 v12, v18

    .line 2992
    :goto_3a
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v1

    move-object/from16 v10, p4

    .line 2990
    invoke-virtual {v10, v0, v12, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionUpdated([IZI)V

    :cond_60
    :goto_3b
    return-void

    .line 2976
    :goto_3c
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method public restoreRuntimePermissions([BI)V
    .locals 2

    .line 2031
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-float v0, p2

    .line 2032
    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 2033
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 2034
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2035
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2036
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 2037
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 2036
    invoke-virtual {p0, p1, p2}, Landroid/permission/PermissionControllerManager;->stageAndApplyRuntimePermissionsBackup([BLandroid/os/UserHandle;)V

    return-void

    :catchall_0
    move-exception p0

    .line 2035
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final revokePermissionFromPackageForUser(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .locals 8

    .line 4181
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    move-object v1, p1

    .line 4182
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4184
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x17

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 4189
    :cond_0
    invoke-virtual {p0, v1, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    const/16 v4, 0x3e8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v5, p4

    move-object v7, p5

    .line 4192
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 4199
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to revoke "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PermissionManager"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Ljava/util/Collection;II[I)[I
    .locals 8

    const/16 v0, 0x17

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p4, v0, :cond_0

    move p4, v1

    goto :goto_0

    :cond_0
    move p4, v2

    .line 3026
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/pm/permission/UidPermissionState;->getGrantedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3027
    invoke-interface {p3, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3028
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3029
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3030
    invoke-virtual {p1, v3}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v5

    and-int/lit16 v6, v5, 0x80

    if-eqz v6, :cond_1

    .line 3038
    sget-object v6, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/List;

    invoke-static {v6, v3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3039
    const-string v6, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {p1, v6}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3041
    invoke-virtual {p1, v6}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v6

    and-int/lit16 v6, v6, 0x88

    if-nez v6, :cond_2

    move v6, v1

    goto :goto_2

    :cond_2
    move v6, v2

    :goto_2
    and-int/lit8 v5, v5, 0x34

    if-nez v5, :cond_4

    if-eqz p4, :cond_4

    if-nez v6, :cond_4

    .line 3051
    invoke-virtual {p1, v4}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3052
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v5, :cond_3

    .line 3053
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Revoking runtime permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as it is now requested"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "PermissionManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v3, 0x83

    goto :goto_3

    :cond_4
    const/16 v3, 0x80

    .line 3062
    :goto_3
    invoke-virtual {p1, v4, v3, v2}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 3063
    invoke-static {p6, p5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p6

    goto/16 :goto_1

    :cond_5
    return-object p6
.end method

.method public revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V
    .locals 9

    .line 1527
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1528
    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    .line 1529
    invoke-virtual {p0, v5, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermission(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1531
    :goto_1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REVOKE_POST_NOTIFICATIONS_WITHOUT_KILL"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    const-string/jumbo v7, "skip permission revoke app kill for notification test"

    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    return-void
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 1515
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1516
    const-string p3, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    const-string v0, "default:0"

    .line 1517
    invoke-virtual {p0, v4, p3, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    :goto_0
    move v3, p3

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    goto :goto_0

    .line 1521
    :goto_1
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    return-void
.end method

.method public final revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .locals 9

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 1541
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    return-void
.end method

.method public final revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .locals 9

    .line 1555
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p6}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1556
    const-string p0, "PermissionManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No such user:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1560
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    const-string/jumbo v3, "revokeRuntimePermission"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 1564
    const-string/jumbo v5, "revokeRuntimePermission"

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p5

    move v2, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1569
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1571
    const-string p0, "PermissionManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown package: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1574
    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, p5, p6, v5}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result v4

    if-nez v4, :cond_16

    .line 1580
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v4

    .line 1581
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v6, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    if-eqz v6, :cond_15

    .line 1585
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v6

    .line 1586
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz v6, :cond_3

    .line 1589
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-eq p5, v4, :cond_2

    invoke-virtual {p0, p5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mayManageRolePermission(I)Z

    move-result p5

    if-eqz p5, :cond_3

    :cond_2
    const/4 v5, 0x1

    .line 1592
    :cond_3
    iget-object p5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p5

    .line 1593
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 1598
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1599
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    .line 1601
    :cond_4
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v5, :cond_5

    goto :goto_0

    .line 1603
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Permission "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is managed by role"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    .line 1606
    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Permission "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " requested by "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1607
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not a changeable permission type"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1610
    :cond_7
    :goto_0
    invoke-virtual {p0, v3, p6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v5

    if-nez v5, :cond_8

    .line 1612
    const-string p0, "PermissionManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Missing permissions state for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 1617
    :cond_8
    :try_start_2
    invoke-virtual {v5, p2}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1618
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_1

    .line 1619
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Package "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " has not requested permission "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1627
    :cond_a
    :goto_1
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v6

    const/16 v7, 0x17

    if-ge v6, v7, :cond_b

    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1628
    monitor-exit p5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 1631
    :cond_b
    :try_start_3
    invoke-virtual {v5, p2}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v6

    and-int/lit8 v7, v6, 0x10

    if-eqz v7, :cond_d

    .line 1634
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v7

    const/16 v8, 0x3e8

    if-ne v7, v8, :cond_c

    goto :goto_2

    .line 1635
    :cond_c
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Non-System UID cannot revoke system fixed permission "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for package "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_2
    if-nez p3, :cond_f

    and-int/lit8 p3, v6, 0x4

    if-nez p3, :cond_e

    goto :goto_3

    .line 1639
    :cond_e
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot revoke policy fixed permission "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for package "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1647
    :cond_f
    :goto_3
    invoke-virtual {v5, v1}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result p3

    if-nez p3, :cond_10

    .line 1648
    monitor-exit p5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 1650
    :cond_10
    :try_start_4
    monitor-exit p5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz v4, :cond_11

    const/16 p3, 0x4dd

    .line 1653
    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    :cond_11
    if-eqz p8, :cond_13

    if-eqz v4, :cond_12

    .line 1659
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result p0

    invoke-static {p6, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    move-object v5, p2

    move v4, p4

    move v2, p6

    move-object/from16 v3, p7

    move-object/from16 v0, p8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionRevoked(IILjava/lang/String;ZLjava/lang/String;)V

    return-void

    .line 1662
    :cond_12
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onInstallPermissionRevoked()V

    :cond_13
    return-void

    .line 1595
    :cond_14
    :try_start_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown permission: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1650
    :goto_4
    monitor-exit p5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_5

    .line 1583
    :cond_15
    :try_start_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown permission: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1586
    :goto_5
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 1576
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown package: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final revokeRuntimePermissionsIfGroupChangedInternal(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 12

    .line 2180
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 2181
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 2185
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 2187
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getParsedPermissionGroup()Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2188
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2189
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getParsedPermissionGroup()Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2188
    invoke-virtual {v1, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2193
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 2194
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p2

    :goto_1
    if-ge v2, p2, :cond_4

    .line 2198
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 2199
    invoke-static {v0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->getProtection(Lcom/android/internal/pm/pkg/component/ParsedPermission;)I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 2202
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2204
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getParsedPermissionGroup()Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v0, 0x0

    :goto_2
    move-object v10, v0

    goto :goto_3

    .line 2205
    :cond_2
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getParsedPermissionGroup()Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2206
    :goto_3
    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 2210
    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2211
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v6

    .line 2212
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v4, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;

    move-object v5, p0

    move-object v8, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[ILjava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    goto :goto_4

    :cond_3
    move-object v5, p0

    move-object v8, p1

    :goto_4
    add-int/lit8 v2, v2, 0x1

    move-object p0, v5

    move-object p1, v8

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final revokeRuntimePermissionsIfPermissionDefinitionChangedInternal(Ljava/util/List;)V
    .locals 9

    .line 2249
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v3

    .line 2250
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2251
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/4 v1, 0x0

    move v7, v1

    :goto_0
    if-ge v7, v0, :cond_2

    .line 2254
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 2256
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 2257
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2258
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move-object v2, p0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 2261
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v5

    .line 2262
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2263
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda17;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[ILjava/lang/String;ZI)V

    invoke-virtual {v8, v1}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    goto :goto_2

    .line 2259
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    move-object p0, v2

    goto :goto_0

    .line 2262
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_2
    return-void
.end method

.method public final revokeSharedUserPermissionsForLeavingPackageInternal(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/util/List;I)V
    .locals 10

    if-nez p1, :cond_0

    .line 3828
    const-string p0, "PermissionManager"

    const-string p1, "Trying to update info for null package. Just ignoring"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3833
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 3837
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3838
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3837
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 3839
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v4

    if-ne v3, v4, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    .line 3843
    :goto_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3846
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/AndroidPackage;

    if-eqz v7, :cond_3

    .line 3848
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 3849
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    .line 3861
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    .line 3865
    :cond_5
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v6

    .line 3866
    :try_start_0
    invoke-virtual {p0, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v7

    if-nez v7, :cond_6

    .line 3868
    const-string v5, "PermissionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing permissions state for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " and user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3870
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 3873
    :cond_6
    :try_start_1
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v8, v5}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v5

    if-nez v5, :cond_7

    .line 3875
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto/16 :goto_1

    .line 3880
    :cond_7
    :try_start_2
    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->hasGids()Z

    move-result v5

    if-eqz v5, :cond_8

    move v1, v2

    .line 3883
    :cond_8
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto/16 :goto_1

    :goto_2
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_9
    if-eqz v1, :cond_a

    .line 3888
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda9;

    invoke-direct {p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_a
    :goto_3
    return-void
.end method

.method public final revokeStoragePermissionsIfScopeExpandedInternal(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 16

    move-object/from16 v1, p0

    .line 2080
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/4 v2, 0x1

    const/4 v9, 0x0

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_0

    .line 2081
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-ge v0, v3, :cond_0

    move v10, v2

    goto :goto_0

    :cond_0
    move v10, v9

    .line 2082
    :goto_0
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-ge v0, v3, :cond_1

    .line 2083
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-lt v0, v3, :cond_1

    goto :goto_1

    .line 2084
    :cond_1
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2085
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    move v11, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v11, v9

    :goto_2
    if-nez v11, :cond_3

    if-nez v10, :cond_3

    goto/16 :goto_7

    .line 2091
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2092
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object v12

    array-length v13, v12

    move v14, v9

    :goto_3
    if-ge v14, v13, :cond_9

    aget v6, v12, v14

    .line 2093
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_4
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2095
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2094
    invoke-virtual {v1, v0, v9, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_4

    .line 2099
    :cond_5
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->STORAGE_PERMISSIONS:Ljava/util/List;

    iget-object v3, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_AURAL_PERMISSIONS:Ljava/util/Set;

    iget-object v3, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 2100
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_VISUAL_PERMISSIONS:Ljava/util/Set;

    iget-object v3, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 2101
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2105
    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string v4, "default:0"

    invoke-virtual {v1, v0, v3, v4, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x14

    if-eqz v0, :cond_7

    goto :goto_4

    .line 2112
    :cond_7
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Revoking permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2114
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " as either the sdk downgraded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " or newly requested legacy full storage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "171430330"

    filled-new-array {v4, v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x534e4554

    .line 2112
    invoke-static {v3, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2119
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v9, v2

    move-object v2, v0

    :try_start_1
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v9, v2

    .line 2122
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to revoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2123
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2122
    const-string v2, "PermissionManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    const/4 v9, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_4

    :cond_8
    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_3

    :cond_9
    :goto_7
    return-void
.end method

.method public final revokeSystemAlertWindowIfUpgradedPast23(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 9

    .line 2141
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result p2

    const/16 v0, 0x17

    if-ge p2, v0, :cond_2

    .line 2142
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result p2

    if-lt p2, v0, :cond_2

    .line 2143
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object p2

    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 2144
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 2149
    :cond_0
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p2

    .line 2150
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 2151
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2152
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2153
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p2

    .line 2154
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 2155
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionBySignature(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/Permission;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_4

    .line 2158
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object p2

    array-length v1, p2

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v7, p2, v2

    .line 2160
    :try_start_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.permission.SYSTEM_ALERT_WINDOW"

    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v6, 0x0

    move-object v3, p0

    :try_start_2
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokePermissionFromPackageForUser(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_1
    move-object p0, v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, p0

    goto :goto_1

    .line 2164
    :goto_2
    const-string v0, "PermissionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to revoke SYSTEM_ALERT_WINDOW for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2165
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2164
    invoke-static {v0, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    add-int/lit8 v2, v2, 0x1

    move-object p0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2151
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_2
    :goto_4
    return-void
.end method

.method public final revokeUnusedSharedUserPermissionsLocked(Ljava/util/Collection;Lcom/android/server/pm/permission/UidPermissionState;)Z
    .locals 6

    .line 3902
    invoke-virtual {p2}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionStates()Ljava/util/List;

    move-result-object v0

    .line 3903
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_0
    if-ltz v1, :cond_1

    .line 3905
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/PermissionState;

    .line 3906
    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3907
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3909
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public final setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;II)Z
    .locals 7

    .line 1258
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x7

    .line 1259
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 1263
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    int-to-float v0, p4

    const/4 v3, 0x0

    .line 1264
    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 1266
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p4, :cond_1

    .line 1267
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAllowlistedRestrictedPermissions for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 1277
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1278
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1279
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 1278
    invoke-virtual {v4, p1, v3, v5, v1}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    .line 1283
    :cond_3
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {p1, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    move p1, v2

    goto :goto_1

    :cond_4
    move p1, v1

    .line 1286
    :goto_1
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1287
    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/pkg/AndroidPackage;I)Z

    move-result v3

    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_6

    if-eqz p1, :cond_5

    goto :goto_2

    .line 1290
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Modifying system allowlist requires android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    and-int/lit8 v4, p3, 0x4

    if-eqz v4, :cond_f

    if-nez p1, :cond_8

    if-eqz v3, :cond_7

    goto :goto_3

    .line 1296
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Modifying upgrade allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1301
    :cond_8
    :goto_3
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    if-eqz p2, :cond_d

    .line 1302
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_5

    .line 1308
    :cond_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    :goto_4
    if-ge v1, v5, :cond_f

    if-eqz v4, :cond_a

    .line 1311
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    :cond_a
    if-eqz p1, :cond_c

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1313
    :cond_c
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Adding to upgrade allowlist requiresandroid.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_5
    if-eqz v4, :cond_e

    .line 1303
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    return v2

    :cond_f
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_11

    if-nez p1, :cond_11

    if-eqz v3, :cond_10

    goto :goto_6

    .line 1322
    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Modifying installer allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1328
    :cond_11
    :goto_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1330
    :try_start_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1332
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1333
    throw p0
.end method

.method public final setAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;II)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v5, p4

    .line 3691
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 3693
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3695
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v4

    .line 3696
    :try_start_0
    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v7, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 3697
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->isHardOrSoftRestricted()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move v5, v1

    goto/16 :goto_5

    .line 3701
    :cond_1
    invoke-virtual {v0, v9, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v7

    if-nez v7, :cond_2

    .line 3703
    const-string v3, "PermissionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing permissions state for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " and user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3705
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    move v5, v1

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    .line 3707
    :cond_2
    :try_start_1
    invoke-virtual {v7, v3}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v7

    .line 3708
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz v7, :cond_4

    if-nez v6, :cond_3

    .line 3712
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 3714
    :cond_3
    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v14, v6

    .line 3717
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v1, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4

    move/from16 v6, p3

    move v8, v4

    const/4 v15, 0x0

    :goto_1
    const/4 v13, 0x1

    if-eqz v6, :cond_b

    .line 3724
    invoke-static {v6}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v16

    shl-int v12, v13, v16

    not-int v13, v12

    and-int/2addr v6, v13

    const/4 v13, 0x1

    if-eq v12, v13, :cond_9

    const/4 v13, 0x2

    if-eq v12, v13, :cond_7

    const/4 v13, 0x4

    if-eq v12, v13, :cond_5

    goto :goto_1

    :cond_5
    or-int/lit16 v15, v15, 0x2000

    if-eqz v10, :cond_6

    .line 3738
    invoke-interface {v10, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    or-int/lit16 v8, v8, 0x2000

    goto :goto_1

    :cond_6
    and-int/lit16 v8, v8, -0x2001

    goto :goto_1

    :cond_7
    or-int/lit16 v15, v15, 0x800

    if-eqz v10, :cond_8

    .line 3747
    invoke-interface {v10, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    or-int/lit16 v8, v8, 0x800

    goto :goto_1

    :cond_8
    and-int/lit16 v8, v8, -0x801

    goto :goto_1

    :cond_9
    or-int/lit16 v15, v15, 0x1000

    if-eqz v10, :cond_a

    .line 3729
    invoke-interface {v10, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    or-int/lit16 v8, v8, 0x1000

    goto :goto_1

    :cond_a
    and-int/lit16 v8, v8, -0x1001

    goto :goto_1

    :cond_b
    if-ne v4, v8, :cond_c

    move-object v6, v14

    goto/16 :goto_0

    :cond_c
    and-int/lit16 v2, v4, 0x3800

    if-eqz v2, :cond_d

    move v2, v13

    goto :goto_2

    :cond_d
    const/4 v2, 0x0

    :goto_2
    and-int/lit16 v6, v8, 0x3800

    if-eqz v6, :cond_e

    move v6, v13

    goto :goto_3

    :cond_e
    const/4 v6, 0x0

    :goto_3
    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_f

    if-nez v6, :cond_f

    if-eqz v7, :cond_f

    or-int/lit8 v15, v15, 0x4

    and-int/lit8 v8, v8, -0x5

    .line 3781
    :cond_f
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v4

    const/16 v7, 0x17

    if-ge v4, v7, :cond_10

    if-nez v2, :cond_10

    if-eqz v6, :cond_10

    or-int/lit8 v15, v15, 0x40

    or-int/lit8 v8, v8, 0x40

    :cond_10
    move v5, v1

    move v4, v8

    .line 3787
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v6, p4

    move-object v2, v3

    move v3, v15

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    move v1, v5

    move v2, v13

    move-object v6, v14

    :goto_4
    move/from16 v5, p4

    goto/16 :goto_0

    .line 3698
    :goto_5
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    :goto_6
    move v1, v5

    goto :goto_4

    .line 3708
    :goto_7
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    :cond_11
    if-eqz v2, :cond_15

    .line 3793
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    const/4 v2, 0x0

    move/from16 v5, p4

    move-object v1, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->restorePermissionState(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;I)V

    if-nez v6, :cond_12

    goto :goto_b

    .line 3801
    :cond_12
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v13, 0x0

    :goto_8
    if-ge v13, v2, :cond_15

    .line 3803
    invoke-virtual {v6, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3806
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v4

    .line 3807
    :try_start_4
    invoke-virtual {v0, v1, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v7

    if-nez v7, :cond_14

    .line 3809
    const-string v3, "PermissionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing permissions state for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " and user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3811
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    :cond_13
    const/4 v3, 0x0

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_a

    .line 3813
    :cond_14
    :try_start_5
    invoke-virtual {v7, v3}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v3

    .line 3814
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-nez v3, :cond_13

    .line 3816
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    .line 3817
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v1

    invoke-static {v5, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    const/4 v3, 0x0

    .line 3816
    invoke-virtual {v0, v1, v5, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionRevoked(IILjava/lang/String;)V

    return-void

    :goto_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 3814
    :goto_a
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    :cond_15
    :goto_b
    return-void
.end method

.method public setDefaultPermissionGrantFingerprint(Ljava/lang/String;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public final setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/util/ArraySet;I[I)[I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 3163
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3164
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 3167
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getSplitPermissionInfos()Ljava/util/List;

    move-result-object v4

    .line 3168
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_2

    .line 3170
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 3172
    invoke-virtual {v8}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v9

    .line 3173
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    move v11, v6

    :goto_1
    if-ge v11, v10, :cond_1

    .line 3175
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 3177
    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArraySet;

    if-nez v13, :cond_0

    .line 3179
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 3180
    invoke-virtual {v3, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3183
    :cond_0
    invoke-virtual {v8}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3187
    :cond_2
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArraySet;->size()I

    move-result v4

    move-object/from16 v5, p6

    move v7, v6

    :goto_2
    if-ge v7, v4, :cond_b

    move-object/from16 v8, p4

    .line 3190
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3191
    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    if-eqz v10, :cond_9

    .line 3194
    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v11, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v11

    if-eqz v11, :cond_a

    .line 3199
    invoke-virtual {v11}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 3201
    const-string v12, "android.permission.ACTIVITY_RECOGNITION"

    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    sget-object v12, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_AURAL_PERMISSIONS:Ljava/util/Set;

    .line 3202
    invoke-interface {v12, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    sget-object v12, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_VISUAL_PERMISSIONS:Ljava/util/Set;

    .line 3203
    invoke-interface {v12, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const/16 v12, 0x80

    .line 3204
    invoke-virtual {v1, v11, v12, v12}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    :cond_3
    move/from16 v11, p5

    .line 3208
    invoke-static {v5, v11}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    move-object/from16 v12, p1

    .line 3210
    invoke-virtual {v12, v10}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Landroid/util/ArraySet;)Z

    move-result v13

    if-nez v13, :cond_4

    move v13, v6

    .line 3212
    :goto_3
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v14

    if-ge v13, v14, :cond_7

    .line 3214
    invoke-virtual {v10, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 3215
    iget-object v15, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v15, v14}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 3220
    invoke-virtual {v15}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v14

    if-nez v14, :cond_5

    :cond_4
    move-object/from16 v13, p3

    goto :goto_4

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 3217
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown source permission in split permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3228
    :cond_7
    sget-boolean v13, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v13, :cond_8

    .line 3229
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " does not inherit from "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " for "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " as split permission is also new"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "PermissionManager"

    invoke-static {v10, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v13, p3

    goto :goto_5

    .line 3237
    :goto_4
    invoke-virtual {v0, v10, v9, v1, v13}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->inheritPermissionStateToNewImplicitPermissionLocked(Landroid/util/ArraySet;Ljava/lang/String;Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/pkg/AndroidPackage;)V

    goto :goto_5

    :cond_9
    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move/from16 v11, p5

    goto :goto_5

    .line 3196
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown new permission in split permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_b
    return-object v5
.end method

.method public final shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z
    .locals 8

    .line 3400
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v0

    .line 3401
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isOem()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    if-eqz v1, :cond_a

    .line 3402
    :cond_0
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3403
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v4

    .line 3406
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3407
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3408
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    .line 3409
    :cond_1
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    :goto_0
    if-eqz v6, :cond_6

    if-eqz v0, :cond_2

    .line 3411
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    if-eqz v1, :cond_6

    .line 3412
    invoke-static {v5, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->canGrantOemPermission(Lcom/android/server/pm/pkg/PackageState;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3414
    :cond_3
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    :goto_1
    move p4, v2

    goto :goto_2

    .line 3420
    :cond_5
    invoke-virtual {p4, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_6
    move p4, v3

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    .line 3424
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result p4

    if-nez p4, :cond_4

    :cond_8
    if-eqz v1, :cond_6

    .line 3425
    invoke-static {p2, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->canGrantOemPermission(Lcom/android/server/pm/pkg/PackageState;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_6

    goto :goto_1

    :goto_2
    if-eqz p4, :cond_b

    if-eqz v0, :cond_b

    .line 3430
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isVendorPrivileged()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3431
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isOdm()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3432
    :cond_9
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cannot be granted to privileged vendor apk "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3433
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " because it isn\'t a \'vendorPrivileged\' permission."

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 3432
    const-string v0, "PermissionManager"

    invoke-static {v0, p4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move p4, v3

    :cond_b
    if-nez p4, :cond_c

    .line 3438
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isPre23()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x17

    if-ge v0, v1, :cond_c

    move p4, v2

    :cond_c
    if-nez p4, :cond_e

    .line 3447
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isInstaller()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x2

    .line 3448
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v0

    .line 3450
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3448
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x7

    .line 3451
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v0

    .line 3453
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3450
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    move p4, v2

    :cond_e
    if-nez p4, :cond_f

    .line 3458
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isVerifier()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x4

    .line 3459
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v0

    .line 3461
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3459
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move p4, v2

    :cond_f
    if-nez p4, :cond_10

    .line 3466
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isPreInstalled()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p2

    if-eqz p2, :cond_10

    move p4, v2

    :cond_10
    if-nez p4, :cond_11

    .line 3470
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isKnownSigner()Z

    move-result p2

    if-eqz p2, :cond_11

    .line 3473
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->getKnownCerts()Ljava/util/Set;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelfWithDigest(Ljava/util/Set;)Z

    move-result p4

    :cond_11
    if-nez p4, :cond_12

    .line 3481
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isSetup()Z

    move-result p2

    if-eqz p2, :cond_12

    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3482
    invoke-virtual {p2, v2, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p2

    .line 3484
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3482
    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    move p4, v2

    :cond_12
    if-nez p4, :cond_13

    .line 3489
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isSystemTextClassifier()Z

    move-result p2

    if-eqz p2, :cond_13

    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v0, 0x6

    .line 3490
    invoke-virtual {p2, v0, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p2

    .line 3492
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3490
    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    move p4, v2

    :cond_13
    if-nez p4, :cond_14

    .line 3496
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isConfigurator()Z

    move-result p2

    if-eqz p2, :cond_14

    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v0, 0xa

    .line 3497
    invoke-virtual {p2, v0, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p2

    .line 3499
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3497
    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    move p4, v2

    :cond_14
    if-nez p4, :cond_15

    .line 3503
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isIncidentReportApprover()Z

    move-result p2

    if-eqz p2, :cond_15

    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v0, 0xb

    .line 3504
    invoke-virtual {p2, v0, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p2

    .line 3506
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3504
    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    move p4, v2

    :cond_15
    if-nez p4, :cond_16

    .line 3511
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isAppPredictor()Z

    move-result p2

    if-eqz p2, :cond_16

    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v0, 0xc

    .line 3512
    invoke-virtual {p2, v0, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p2

    .line 3514
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3512
    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    move p4, v2

    :cond_16
    if-nez p4, :cond_17

    .line 3518
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isCompanion()Z

    move-result p2

    if-eqz p2, :cond_17

    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v0, 0xf

    .line 3519
    invoke-virtual {p2, v0, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p2

    .line 3521
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3519
    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    move p4, v2

    :cond_17
    if-nez p4, :cond_18

    .line 3525
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isRetailDemo()Z

    move-result p2

    if-eqz p2, :cond_18

    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v0, 0x10

    .line 3526
    invoke-virtual {p2, v0, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p2

    .line 3528
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3526
    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 3528
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result p2

    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isProfileOwner(I)Z

    move-result p2

    if-eqz p2, :cond_18

    move p4, v2

    :cond_18
    if-nez p4, :cond_19

    .line 3532
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isRecents()Z

    move-result p2

    if-eqz p2, :cond_19

    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v0, 0x11

    .line 3533
    invoke-virtual {p2, v0, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p2

    .line 3535
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3533
    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    move p4, v2

    :cond_19
    if-nez p4, :cond_1a

    .line 3539
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isModule()Z

    move-result p2

    if-eqz p2, :cond_1a

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 3540
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 3539
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ApexManager;->getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1a

    return v2

    :cond_1a
    return p4
.end method

.method public final shouldGrantPermissionBySignature(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/Permission;)Z
    .locals 3

    .line 3372
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3374
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3375
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    .line 3386
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getSourcePackageSigningDetails(Lcom/android/server/pm/permission/Permission;)Landroid/content/pm/SigningDetails;

    move-result-object p0

    .line 3388
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    const/4 v2, 0x4

    .line 3387
    invoke-virtual {p0, p2, v2}, Landroid/content/pm/SigningDetails;->hasCommonSignerWithCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 3390
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 3391
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    .line 3392
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    .line 3391
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    .line 1906
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    .line 1907
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p4, :cond_0

    .line 1908
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canShowRequestPermissionRationale for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v1, 0x10000000

    .line 1914
    invoke-virtual {v0, p1, v1, v2, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 1915
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v2, 0x0

    if-eq v1, v0, :cond_1

    return v2

    .line 1919
    :cond_1
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 1925
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1927
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1929
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    and-int/lit8 v0, p3, 0x16

    if-eqz v0, :cond_3

    return v2

    .line 1940
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v3

    .line 1941
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1943
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v2

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 1945
    :cond_4
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isHardRestricted()Z

    move-result v0

    if-eqz v0, :cond_5

    and-int/lit16 v0, p3, 0x3800

    if-nez v0, :cond_5

    .line 1947
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v2

    .line 1949
    :cond_5
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 1951
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v3, 0x1

    .line 1953
    :try_start_4
    const-string v4, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    const-wide/32 v4, 0x8c7dff3

    .line 1954
    invoke-interface {p0, v4, v5, p1, p4}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p0, :cond_6

    .line 1961
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_6
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 1959
    :goto_1
    :try_start_5
    const-string p1, "PermissionManager"

    const-string p2, "Unable to check if compatibility change is enabled."

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :goto_2
    and-int/lit8 p0, p3, 0x1

    if-eqz p0, :cond_7

    move v2, v3

    :cond_7
    return v2

    .line 1961
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1962
    throw p0

    .line 1949
    :goto_4
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :catchall_2
    move-exception p0

    .line 1929
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1930
    throw p0
.end method

.method public final updateAllPermissions(Ljava/lang/String;Z)V
    .locals 7

    .line 3952
    invoke-static {}, Landroid/content/pm/PackageManager;->corkPackageInfoCache()V

    if-eqz p2, :cond_0

    const/4 p2, 0x6

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x1

    or-int v5, v0, p2

    .line 3958
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3960
    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    .line 3961
    throw p0
.end method

.method public updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;I)V
    .locals 9

    .line 747
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 p6, 0x3e8

    if-eq v5, p6, :cond_2

    if-eqz v5, :cond_2

    and-int/lit8 p6, p3, 0x4

    if-eqz p6, :cond_2

    if-eqz p5, :cond_0

    .line 753
    iget-object p5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string p6, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    const-string v0, "Need android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY to change policy flags"

    invoke-virtual {p5, p6, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 757
    :cond_0
    iget-object p5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p5, v5}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result p5

    const/16 p6, 0x1d

    if-ge p5, p6, :cond_1

    :goto_0
    const/4 p5, 0x1

    :goto_1
    move v7, p5

    goto :goto_2

    .line 759
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY needs  to be checked for packages targeting 29 or later when changing policy flags"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 p5, 0x0

    goto :goto_1

    .line 769
    :goto_2
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    return-void
.end method

.method public updatePermissionFlagsForAllApps(III)V
    .locals 12

    .line 891
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 892
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    .line 896
    :cond_0
    const-string/jumbo v0, "updatePermissionFlagsForAllApps"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 898
    const-string/jumbo v5, "updatePermissionFlagsForAllApps"

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    const/16 p0, 0x3e8

    if-eq v1, p0, :cond_1

    :goto_0
    move v10, p1

    goto :goto_1

    :cond_1
    and-int/lit8 p1, p1, -0x11

    goto :goto_0

    :goto_1
    if-eq v1, p0, :cond_2

    :goto_2
    move v11, p2

    goto :goto_3

    :cond_2
    and-int/lit8 p2, p2, -0x11

    goto :goto_2

    :goto_3
    const/4 p0, 0x1

    .line 909
    new-array v9, p0, [Z

    .line 910
    iget-object p1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v6, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda0;

    move-object v7, v0

    move v8, v2

    invoke-direct/range {v6 .. v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;I[ZII)V

    invoke-virtual {p1, v6}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    const/4 p1, 0x0

    .line 925
    aget-boolean p1, v9, p1

    if-eqz p1, :cond_3

    .line 926
    iget-object p1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    filled-new-array {v2}, [I

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    :cond_3
    :goto_4
    return-void
.end method

.method public final updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .locals 7

    .line 791
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p6}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 795
    :cond_0
    const-string/jumbo v0, "updatePermissionFlags"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 797
    const-string/jumbo v6, "updatePermissionFlags"

    const/4 v4, 0x1

    move-object v1, p0

    move v2, p5

    move v3, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    and-int/lit8 p0, p3, 0x4

    if-eqz p0, :cond_2

    if-eqz p7, :cond_1

    goto :goto_0

    .line 803
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "updatePermissionFlags requires android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const/16 p0, 0x3e8

    if-eq v2, p0, :cond_3

    and-int/lit8 p3, p3, -0x31

    and-int/lit16 p4, p4, -0x7831

    .line 819
    :cond_3
    iget-object p0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    if-nez p0, :cond_4

    .line 821
    const-string p0, "PermissionManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown package: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 824
    :cond_4
    iget-object p5, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 p6, 0x0

    invoke-virtual {p5, p1, v2, v3, p6}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result p5

    if-nez p5, :cond_c

    .line 831
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_6

    .line 836
    iget-object p7, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 837
    invoke-virtual {p7, p1, v3}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p7

    .line 838
    array-length v0, p7

    move v2, p6

    :goto_1
    if-ge v2, v0, :cond_6

    aget-object v4, p7, v2

    .line 839
    iget-object v5, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 842
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 p5, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 851
    :cond_6
    :goto_2
    iget-object p7, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p7

    .line 852
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 857
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v2

    .line 859
    invoke-virtual {v1, p0, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v1

    if-nez v1, :cond_7

    .line 861
    const-string p0, "PermissionManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing permissions state for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and user "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    monitor-exit p7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    .line 865
    :cond_7
    :try_start_1
    invoke-virtual {v1, p2}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    if-nez p5, :cond_8

    .line 866
    const-string p0, "PermissionManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Permission "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " isn\'t requested by package "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    monitor-exit p7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 870
    :cond_8
    :try_start_2
    invoke-virtual {v1, v0, p3, p4}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    move-result p1

    .line 871
    monitor-exit p7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz p1, :cond_a

    if-eqz p8, :cond_a

    if-nez v2, :cond_9

    .line 877
    invoke-virtual {p8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onInstallPermissionUpdated()V

    return-void

    .line 879
    :cond_9
    filled-new-array {v3}, [I

    move-result-object p1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result p0

    invoke-virtual {p8, p1, p6, p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionUpdated([IZI)V

    :cond_a
    :goto_3
    return-void

    .line 854
    :cond_b
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown permission: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 871
    :goto_4
    monitor-exit p7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 826
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown package: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final updatePermissionSourcePackage(Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)Z
    .locals 10

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 4081
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 4082
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/permission/Permission;

    .line 4083
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isDynamic()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4084
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTrees()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/Permission;->updateDynamicPermission(Ljava/util/Collection;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    .line 4086
    :cond_1
    :goto_1
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    .line 4096
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 4098
    :cond_3
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v5, v0

    goto :goto_0

    .line 4100
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz v4, :cond_a

    .line 4102
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p1

    .line 4103
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/Permission;

    if-eqz p1, :cond_7

    .line 4106
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->hasPermission(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_4

    .line 4142
    :cond_5
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4143
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    .line 4144
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4145
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 4146
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v6

    if-eqz v2, :cond_6

    if-eqz v4, :cond_6

    .line 4148
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 4150
    :cond_6
    :try_start_2
    const-string v2, "PermissionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing dangling permission: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from package "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4151
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4150
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4152
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/pm/permission/PermissionRegistry;->removePermission(Ljava/lang/String;)V

    .line 4153
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_2

    :goto_3
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 4107
    :cond_7
    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPermissionDeclaredByDisabledSystemPkg(Lcom/android/server/pm/permission/Permission;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 4108
    const-string v2, "PermissionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing permission "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " that used to be declared by "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4109
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4108
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4110
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4111
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v2

    .line 4112
    array-length v4, v2

    move v6, v3

    :goto_5
    if-ge v6, v4, :cond_9

    .line 4114
    aget v7, v2, v6

    .line 4115
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v9, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda14;

    invoke-direct {v9, p0, v1, v7, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/permission/Permission;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 4120
    :cond_8
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v4, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda15;

    invoke-direct {v4, p0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/permission/Permission;)V

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 4137
    :cond_9
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 4138
    :try_start_4
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/server/pm/permission/PermissionRegistry;->removePermission(Ljava/lang/String;)V

    .line 4139
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto/16 :goto_2

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_a
    return v5

    .line 4100
    :goto_6
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final updatePermissionTreeSourcePackage(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 4234
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 4235
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTrees()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    .line 4236
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4237
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/Permission;

    .line 4238
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 4247
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->hasPermission(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 4248
    :cond_2
    :goto_1
    const-string v2, "PermissionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing permission tree "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " that used to be declared by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4249
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4248
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4250
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :cond_3
    move v2, v0

    goto :goto_0

    .line 4253
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v2

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final updatePermissions(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 7

    if-nez p2, :cond_0

    const/4 v0, 0x3

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 3936
    :goto_1
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getVolumeUuidForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 3935
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    return-void
.end method

.method public final updatePermissions(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .locals 13

    .line 4023
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionTreeSourcePackage(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    move-object/from16 v5, p5

    .line 4027
    invoke-virtual {p0, p1, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionSourcePackage(Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 4033
    const-string v0, "PermissionManager"

    const-string v1, "Permission ownership changed. Updating all permissions."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v0, p4, 0x1

    goto :goto_0

    :cond_0
    move/from16 v0, p4

    .line 4037
    :goto_0
    const-string/jumbo v1, "restorePermissionState"

    const-wide/32 v8, 0x40000

    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    and-int/lit8 v1, v0, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v1, :cond_2

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move v4, v11

    goto :goto_1

    :cond_1
    move v4, v10

    .line 4041
    :goto_1
    iget-object v12, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda7;

    move-object v2, p0

    move-object v6, p1

    move-object v3, p2

    move-object v7, v5

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    invoke-virtual {v12, v1}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    :cond_2
    if-eqz p2, :cond_4

    .line 4055
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getVolumeUuidForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    move-object/from16 v5, p3

    .line 4057
    invoke-static {v5, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v3, v11

    goto :goto_2

    :cond_3
    move v3, v10

    :goto_2
    const/4 v6, -0x1

    move-object v1, p0

    move-object v4, p1

    move-object v2, p2

    move-object/from16 v5, p5

    .line 4058
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->restorePermissionState(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;I)V

    .line 4061
    :cond_4
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public writeLegacyPermissionStateTEMP()V
    .locals 3

    .line 4544
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 4545
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserIds()[I

    move-result-object v1

    .line 4546
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4547
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[I)V

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->forEachPackageSetting(Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception p0

    .line 4546
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public writeLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 4641
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4642
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v3

    if-nez v1, :cond_0

    .line 4644
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTrees()Ljava/util/Collection;

    move-result-object v4

    .line 4645
    :goto_1
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/Permission;

    .line 4647
    new-instance v6, Lcom/android/server/pm/permission/LegacyPermission;

    .line 4648
    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->getType()I

    move-result v5

    sget-object v8, Llibcore/util/EmptyArray;->INT:[I

    invoke-direct {v6, v7, v5, v0, v8}, Lcom/android/server/pm/permission/LegacyPermission;-><init>(Landroid/content/pm/PermissionInfo;II[I)V

    .line 4650
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4652
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-nez v1, :cond_2

    .line 4654
    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->replacePermissions(Ljava/util/List;)V

    goto :goto_3

    .line 4656
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->replacePermissionTrees(Ljava/util/List;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4652
    :goto_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_3
    return-void
.end method
