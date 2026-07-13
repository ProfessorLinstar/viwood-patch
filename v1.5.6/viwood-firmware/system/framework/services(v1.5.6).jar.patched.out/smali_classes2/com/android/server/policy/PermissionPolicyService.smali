.class public final Lcom/android/server/policy/PermissionPolicyService;
.super Lcom/android/server/SystemService;
.source "PermissionPolicyService.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PermissionPolicyService"


# instance fields
.field public mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mAppOpPermissions:Ljava/util/List;

.field public mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

.field public mBootCompleted:Z

.field public mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mIsStarted:Landroid/util/SparseBooleanArray;

.field public final mIsUidResetScheduled:Landroid/util/SparseBooleanArray;

.field public final mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mLock:Ljava/lang/Object;

.field public mNotificationManager:Lcom/android/server/notification/NotificationManagerInternal;

.field public mOnInitializedCallback:Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field public final mPhoneCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

.field public final mSimConfigBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$W3Db6krHK_VogswF5lIrWu7rLuk(Lcom/android/server/policy/PermissionPolicyService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->resetAppOpPermissionsIfNotRequestedForUid(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$g9YhLNd1OZQfuSCyT_yO-G8mZv0(Lcom/android/server/policy/PermissionPolicyService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->synchronizeUidPermissionsAndAppOps(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kXuSNWF3S7jBnqn-bwqHq3GSl6A(Lcom/android/internal/infra/AndroidFuture;ILjava/lang/Boolean;)V
    .locals 1

    .line 620
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 621
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void

    .line 625
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error granting/upgrading runtime permissions for user "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 627
    sget-object p2, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$ld1nnNDCxf7vPuA1kAJMQY6ne5I(Lcom/android/server/policy/PermissionPolicyService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->synchronizeUidPermissionsAndAppOpsAsync(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rznrndUGsirjpBcjHOGDjKWoSAo(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0

    .line 701
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addPackage(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityTaskManagerInternal(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/server/wm/ActivityTaskManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppOpsCallback(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/internal/app/IAppOpsCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBootCompleted(Lcom/android/server/policy/PermissionPolicyService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mBootCompleted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/policy/PermissionPolicyService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKeyguardManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/app/KeyguardManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/policy/PermissionPolicyService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationManager(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/server/notification/NotificationManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mNotificationManager:Lcom/android/server/notification/NotificationManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManagerInternal(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/pm/PackageManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPermissionManagerInternal(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTelephonyManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmNotificationManager(Lcom/android/server/policy/PermissionPolicyService;Lcom/android/server/notification/NotificationManagerInternal;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService;->mNotificationManager:Lcom/android/server/notification/NotificationManagerInternal;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmOnInitializedCallback(Lcom/android/server/policy/PermissionPolicyService;Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService;->mOnInitializedCallback:Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitTelephonyManagerIfNeeded(Lcom/android/server/policy/PermissionPolicyService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->initTelephonyManagerIfNeeded()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misStarted(Lcom/android/server/policy/PermissionPolicyService;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mregisterCarrierPrivilegesCallbacks(Lcom/android/server/policy/PermissionPolicyService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->registerCarrierPrivilegesCallbacks()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetAppOpPermissionsIfNotRequestedForUid(Lcom/android/server/policy/PermissionPolicyService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->resetAppOpPermissionsIfNotRequestedForUid(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetAppOpPermissionsIfNotRequestedForUidAsync(Lcom/android/server/policy/PermissionPolicyService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->resetAppOpPermissionsIfNotRequestedForUidAsync(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msynchronizeUidPermissionsAndAppOps(Lcom/android/server/policy/PermissionPolicyService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->synchronizeUidPermissionsAndAppOps(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msynchronizeUidPermissionsAndAppOpsAsync(Lcom/android/server/policy/PermissionPolicyService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->synchronizeUidPermissionsAndAppOpsAsync(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregisterCarrierPrivilegesCallback(Lcom/android/server/policy/PermissionPolicyService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->unregisterCarrierPrivilegesCallback()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smgetSwitchOp(Ljava/lang/String;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/policy/PermissionPolicyService;->getSwitchOp(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 176
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mBootCompleted:Z

    .line 135
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    .line 146
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;

    .line 153
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsUidResetScheduled:Landroid/util/SparseBooleanArray;

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mPhoneCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    .line 529
    new-instance v0, Lcom/android/server/policy/PermissionPolicyService$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PermissionPolicyService$4;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mSimConfigBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 178
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService;->mContext:Landroid/content/Context;

    .line 179
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mHandler:Landroid/os/Handler;

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 181
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 182
    new-instance p1, Lcom/android/server/policy/PermissionPolicyService$Internal;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/policy/PermissionPolicyService$Internal;-><init>(Lcom/android/server/policy/PermissionPolicyService;Lcom/android/server/policy/PermissionPolicyService-IA;)V

    const-class p0, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public static getSwitchOp(Ljava/lang/String;)I
    .locals 1

    .line 385
    invoke-static {p0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return v0

    .line 390
    :cond_0
    invoke-static {p0}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p0

    return p0
.end method

.method public static getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 3

    .line 652
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 656
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 658
    sget-object v0, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create context for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private onStartUser(I)V
    .locals 4

    .line 557
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 562
    :cond_0
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission_grant_default_permissions-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 564
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManagerInternal;->isPermissionUpgradeNeeded(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 565
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->grantOrUpgradeDefaultRuntimePermissions(I)V

    .line 566
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->updateUserSensitive(I)V

    .line 567
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManagerInternal;->updateRuntimePermissionsFingerprint(I)V

    .line 569
    :cond_1
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 573
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 574
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 575
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService;->mOnInitializedCallback:Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;

    .line 576
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission_synchronize_permissions-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePermissionsAndAppOpsForUser(I)V

    .line 581
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v2, :cond_2

    .line 585
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission_onInitialized-"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 586
    invoke-interface {v2, p1}, Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;->onInitialized(I)V

    .line 587
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 576
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final grantOrUpgradeDefaultRuntimePermissions(I)V
    .locals 4

    .line 601
    sget-boolean v0, Landroid/permission/PermissionManager;->USE_ACCESS_CHECKING_SERVICE:Z

    if-eqz v0, :cond_0

    return-void

    .line 606
    :cond_0
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 609
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 614
    new-instance v2, Landroid/permission/PermissionControllerManager;

    .line 616
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    .line 617
    invoke-static {}, Lcom/android/server/PermissionThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 619
    invoke-static {}, Lcom/android/server/PermissionThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance v3, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, p1}, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/infra/AndroidFuture;I)V

    .line 618
    invoke-virtual {v2, p0, v3}, Landroid/permission/PermissionControllerManager;->grantOrUpgradeDefaultRuntimePermissions(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 632
    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission_callback_waiting-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 633
    invoke-virtual {v1}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 635
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 637
    :goto_0
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 638
    throw p0
.end method

.method public final initTelephonyManagerIfNeeded()V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    return-void
.end method

.method public final isStarted(I)Z
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 545
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 546
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onBootPhase(I)V
    .locals 7

    const/16 v0, 0x208

    if-ne p1, v0, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->registerCarrierPrivilegesCallbacks()V

    .line 422
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 424
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService;->mSimConfigBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    const/16 v0, 0x226

    if-ne p1, v0, :cond_2

    .line 428
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 431
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v2, v4

    .line 432
    invoke-virtual {v1, v5}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 433
    invoke-direct {p0, v5}, Lcom/android/server/policy/PermissionPolicyService;->onStartUser(I)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    .line 439
    const-class v0, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 440
    invoke-static {v0}, Lcom/android/server/policy/PermissionPolicyService$Internal;->-$$Nest$monActivityManagerReady(Lcom/android/server/policy/PermissionPolicyService$Internal;)V

    :cond_3
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_4

    .line 444
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 445
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mBootCompleted:Z

    .line 446
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    return-void
.end method

.method public onStart()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 187
    const-string v4, "Cannot set up app-ops listener"

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 189
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 191
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 192
    const-string v0, "appops"

    .line 193
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 192
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    .line 195
    iget-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    new-instance v6, Lcom/android/server/policy/PermissionPolicyService$1;

    invoke-direct {v6, v1}, Lcom/android/server/policy/PermissionPolicyService$1;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;

    .line 234
    iget-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v6, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda0;

    invoke-direct {v6, v1}, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 237
    new-instance v0, Lcom/android/server/policy/PermissionPolicyService$2;

    invoke-direct {v0, v1}, Lcom/android/server/policy/PermissionPolicyService$2;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    iput-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 248
    iget-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const/4 v6, 0x1

    .line 249
    invoke-interface {v0, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAllPermissionsWithProtection(I)Ljava/util/List;

    move-result-object v0

    const/4 v7, 0x0

    .line 252
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    move v9, v2

    :goto_0
    if-ge v9, v8, :cond_2

    .line 254
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PermissionInfo;

    .line 256
    invoke-virtual {v10}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 257
    iget-object v11, v10, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/server/policy/PermissionPolicyService;->getSwitchOp(Ljava/lang/String;)I

    move-result v11

    iget-object v12, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v5, v11, v7, v12}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V

    .line 259
    :cond_0
    invoke-virtual {v10}, Landroid/content/pm/PermissionInfo;->isSoftRestricted()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 260
    iget-object v10, v10, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 261
    invoke-static {v7, v7, v7, v7, v10}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v10

    .line 263
    invoke-virtual {v10}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getExtraAppOpCode()I

    move-result v10

    if-eq v10, v3, :cond_1

    .line 265
    iget-object v11, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v5, v10, v7, v11}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/2addr v9, v6

    goto :goto_0

    .line 270
    :catch_0
    sget-object v0, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_2
    iget-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const/16 v8, 0x40

    .line 274
    invoke-interface {v0, v8}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAllPermissionsWithProtectionFlags(I)Ljava/util/List;

    move-result-object v8

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpPermissions:Ljava/util/List;

    .line 277
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    move v10, v2

    :goto_1
    if-ge v10, v9, :cond_7

    .line 279
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionInfo;

    .line 281
    iget-object v11, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :goto_2
    move v11, v3

    goto :goto_3

    :sswitch_0
    const-string v12, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    goto :goto_2

    :cond_3
    const/4 v11, 0x2

    goto :goto_3

    :sswitch_1
    const-string v12, "android.permission.ACCESS_NOTIFICATIONS"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_2

    :cond_4
    move v11, v6

    goto :goto_3

    :sswitch_2
    const-string v12, "android.permission.MANAGE_IPSEC_TUNNELS"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_2

    :cond_5
    move v11, v2

    :goto_3
    packed-switch v11, :pswitch_data_0

    .line 291
    iget-object v11, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v11}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v11

    if-eq v11, v3, :cond_6

    .line 294
    iget-object v12, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpPermissions:Ljava/util/List;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    :try_start_1
    iget-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v5, v11, v7, v0}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 298
    sget-object v11, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    invoke-static {v11, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_4
    :pswitch_0
    add-int/2addr v10, v6

    goto :goto_1

    .line 304
    :cond_7
    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    .line 305
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    const-string/jumbo v0, "package"

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v11

    new-instance v12, Lcom/android/server/policy/PermissionPolicyService$3;

    invoke-direct {v12, v1}, Lcom/android/server/policy/PermissionPolicyService$3;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 368
    new-instance v0, Landroid/permission/PermissionControllerManager;

    .line 369
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    .line 370
    invoke-static {}, Lcom/android/server/PermissionThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 371
    invoke-static {}, Lcom/android/server/PermissionThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda1;-><init>(Landroid/permission/PermissionControllerManager;)V

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1277d93c -> :sswitch_2
        0x50b27c6d -> :sswitch_1
        0x69eee241 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 551
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->onStartUser(I)V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 596
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 597
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final registerCarrierPrivilegesCallbacks()V
    .locals 5

    .line 458
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->initTelephonyManagerIfNeeded()V

    .line 459
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    goto :goto_1

    .line 463
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 465
    new-instance v2, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;

    invoke-direct {v2, p0, v1}, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;-><init>(Lcom/android/server/policy/PermissionPolicyService;I)V

    .line 466
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService;->mPhoneCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-virtual {v3, v1, v4, v2}, Landroid/telephony/TelephonyManager;->registerCarrierPrivilegesCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final resetAppOpPermissionsIfNotRequestedForUid(I)V
    .locals 14

    .line 722
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 723
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsUidResetScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 724
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 728
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 727
    invoke-static {v0, v1}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    .line 728
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 729
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 730
    array-length v3, v2

    if-nez v3, :cond_0

    goto/16 :goto_5

    .line 734
    :cond_0
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 735
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_3

    aget-object v7, v2, v6

    const/16 v8, 0x1000

    .line 738
    :try_start_1
    invoke-virtual {v1, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v7, :cond_2

    .line 742
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v7, :cond_1

    goto :goto_1

    .line 745
    :cond_1
    invoke-static {v3, v7}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :catch_0
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 748
    :cond_3
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 749
    const-class v1, Landroid/app/AppOpsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/app/AppOpsManagerInternal;

    .line 751
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mAppOpPermissions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v4, v5

    :goto_2
    if-ge v4, v1, :cond_6

    .line 753
    iget-object v7, p0, Lcom/android/server/policy/PermissionPolicyService;->mAppOpPermissions:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 755
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 756
    invoke-static {v7}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v7

    .line 757
    invoke-static {v7}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v10

    .line 758
    array-length v12, v2

    move v13, v5

    :goto_3
    if-ge v13, v12, :cond_5

    aget-object v9, v2, v13

    .line 759
    invoke-virtual {v0, v7, p1, v9}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v8

    if-eq v8, v10, :cond_4

    .line 762
    iget-object v8, p0, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-virtual {v6, v7, p1, v10, v8}, Landroid/app/AppOpsManagerInternal;->setUidModeFromPermissionPolicy(IIILcom/android/internal/app/IAppOpsCallback;)V

    .line 764
    iget-object v11, p0, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    move v8, p1

    invoke-virtual/range {v6 .. v11}, Landroid/app/AppOpsManagerInternal;->setModeFromPermissionPolicy(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    goto :goto_4

    :cond_4
    move v8, p1

    :goto_4
    add-int/lit8 v13, v13, 0x1

    move p1, v8

    goto :goto_3

    :cond_5
    move v8, p1

    add-int/lit8 v4, v4, 0x1

    move p1, v8

    goto :goto_2

    :cond_6
    :goto_5
    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 724
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final resetAppOpPermissionsIfNotRequestedForUidAsync(I)V
    .locals 3

    .line 709
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 711
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsUidResetScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 712
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsUidResetScheduled:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 713
    invoke-static {}, Lcom/android/server/PermissionThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda5;-><init>()V

    .line 715
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 713
    invoke-static {v2, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 717
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public final synchronizePermissionsAndAppOpsForUser(I)V
    .locals 4

    .line 695
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 697
    new-instance v1, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    .line 698
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;-><init>(Lcom/android/server/policy/PermissionPolicyService;Landroid/content/Context;)V

    .line 699
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission_synchronize_addPackages-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 700
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    new-instance v2, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 702
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 703
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission_syncPackages-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 704
    invoke-static {v1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->-$$Nest$msyncPackages(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V

    .line 705
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final synchronizeUidPermissionsAndAppOps(I)V
    .locals 3

    .line 668
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 669
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 670
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 678
    new-instance v1, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    .line 679
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;-><init>(Lcom/android/server/policy/PermissionPolicyService;Landroid/content/Context;)V

    .line 680
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 681
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackagesForAppId(I)Ljava/util/List;

    move-result-object p0

    .line 682
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 684
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 685
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addPackage(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 687
    :cond_0
    invoke-static {v1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->-$$Nest$msyncPackages(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V

    return-void

    :catchall_0
    move-exception p0

    .line 670
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final synchronizeUidPermissionsAndAppOpsAsync(I)V
    .locals 4

    .line 394
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 395
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 397
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda4;-><init>()V

    .line 405
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 403
    invoke-static {v2, p0, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 406
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 412
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public final unregisterCarrierPrivilegesCallback()V
    .locals 3

    .line 473
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->initTelephonyManagerIfNeeded()V

    .line 474
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 478
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mPhoneCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 479
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mPhoneCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;

    if-eqz v1, :cond_1

    .line 481
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->unregisterCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 484
    :cond_2
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mPhoneCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final updateUserSensitive(I)V
    .locals 1

    .line 643
    new-instance v0, Landroid/permission/PermissionControllerManager;

    .line 645
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    .line 646
    invoke-static {}, Lcom/android/server/PermissionThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 647
    invoke-virtual {v0}, Landroid/permission/PermissionControllerManager;->updateUserSensitive()V

    return-void
.end method
