.class public Lcom/android/server/media/projection/MediaProjectionStopController;
.super Ljava/lang/Object;
.source "MediaProjectionStopController.java"


# static fields
.field static final STOP_REASON_CALL_END:I = 0x2

.field static final STOP_REASON_KEYGUARD:I = 0x1

.field static final STOP_REASON_UNKNOWN:I


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public mIsInCall:Z

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public mLastCallStartTimeMillis:J

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mRoleHolderProvider:Lcom/android/server/media/projection/MediaProjectionStopController$RoleHolderProvider;

.field public final mStopReasonConsumer:Ljava/util/function/Consumer;

.field public final mTelecomManager:Landroid/telecom/TelecomManager;

.field public final mTelephonyCallback:Landroid/telephony/TelephonyCallback;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$mvM8pK9Lkoi3AQwy6r7PezXYveY(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1

    .line 79
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    .line 80
    invoke-virtual {p0, p1, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .locals 1

    .line 78
    new-instance v0, Lcom/android/server/media/projection/MediaProjectionStopController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/media/projection/MediaProjectionStopController$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/media/projection/MediaProjectionStopController;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;Lcom/android/server/media/projection/MediaProjectionStopController$RoleHolderProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Consumer;Lcom/android/server/media/projection/MediaProjectionStopController$RoleHolderProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/media/projection/MediaProjectionStopController$RoleHolderProvider;",
            ")V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/android/server/media/projection/MediaProjectionStopController$ProjectionTelephonyCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/projection/MediaProjectionStopController$ProjectionTelephonyCallback;-><init>(Lcom/android/server/media/projection/MediaProjectionStopController;Lcom/android/server/media/projection/MediaProjectionStopController-IA;)V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    .line 86
    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mStopReasonConsumer:Ljava/util/function/Consumer;

    .line 87
    const-class p2, Landroid/app/KeyguardManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/KeyguardManager;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 88
    const-class p2, Landroid/telecom/TelecomManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telecom/TelecomManager;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 89
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 90
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mContentResolver:Landroid/content/ContentResolver;

    .line 93
    iput-object p3, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mRoleHolderProvider:Lcom/android/server/media/projection/MediaProjectionStopController$RoleHolderProvider;

    return-void
.end method

.method public static stopReasonToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 244
    const-string p0, ""

    return-object p0

    .line 241
    :cond_0
    const-string p0, "STOP_REASON_CALL_END"

    return-object p0

    .line 238
    :cond_1
    const-string p0, "STOP_REASON_KEYGUARD"

    return-object p0
.end method


# virtual methods
.method public callStateChanged()V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mLastCallStartTimeMillis:J

    .line 222
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mIsInCall:Z

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 227
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mStopReasonConsumer:Ljava/util/function/Consumer;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 229
    :cond_2
    iput-boolean v0, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mIsInCall:Z

    return-void
.end method

.method public final isExempt(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;IZ)Z
    .locals 10

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    .line 140
    iget-object v1, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "disable_screen_share_protections_for_apps_and_notifications"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "MediaProjectionStopController"

    if-eqz v1, :cond_1

    .line 146
    const-string p0, "Continuing MediaProjection as screenshare protections are disabled."

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.permission.RECORD_SENSITIVE_CONTENT"

    iget-object v5, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 152
    const-string p0, "Continuing MediaProjection for package with RECORD_SENSITIVE_CONTENT permission"

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 157
    :cond_2
    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v6, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    iget-object v7, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "recording lockscreen"

    const/16 v5, 0x2e

    invoke-virtual/range {v4 .. v9}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 162
    const-string p0, "Continuing MediaProjection for package with OP_PROJECT_MEDIA AppOp "

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 165
    :cond_3
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mRoleHolderProvider:Lcom/android/server/media/projection/MediaProjectionStopController$RoleHolderProvider;

    const-string v4, "android.app.role.COMPANION_DEVICE_APP_STREAMING"

    iget-object v5, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->userHandle:Landroid/os/UserHandle;

    invoke-interface {v1, v4, v5}, Lcom/android/server/media/projection/MediaProjectionStopController$RoleHolderProvider;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    iget-object v4, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    .line 167
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 168
    const-string p0, "Continuing MediaProjection for package holding app streaming role."

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 171
    :cond_4
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getBugreportWhitelistedPackages()Landroid/util/ArraySet;

    move-result-object v1

    iget-object v4, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 173
    const-string p0, "Continuing MediaProjection for package allowlisted for bugreporting."

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_5
    if-nez p3, :cond_6

    .line 176
    invoke-virtual {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getVirtualDisplayId()I

    move-result p3

    const/4 v1, -0x1

    if-ne p3, v1, :cond_6

    .line 177
    const-string p0, "Continuing MediaProjection as current projection has no VirtualDisplay."

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6
    const/4 p3, 0x2

    if-ne p2, p3, :cond_7

    .line 182
    invoke-virtual {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getCreateTimeMillis()J

    move-result-wide p1

    iget-wide v4, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mLastCallStartTimeMillis:J

    cmp-long p0, p1, v4

    if-gez p0, :cond_7

    .line 183
    const-string p0, "Continuing MediaProjection as (phone) call started after MediaProjection was created."

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_7
    return v3

    :cond_8
    :goto_0
    return v0
.end method

.method public isExemptFromStopping(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/media/projection/MediaProjectionStopController;->isExempt(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;IZ)Z

    move-result p0

    return p0
.end method

.method public isStartForbidden(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)Z
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 201
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/media/projection/MediaProjectionStopController;->isExempt(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;IZ)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public isStopReasonCallEnd(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onKeyguardLockedStateChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mStopReasonConsumer:Ljava/util/function/Consumer;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public startTrackingStopReasons(Landroid/content/Context;)V
    .locals 5

    .line 100
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 102
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/android/server/media/projection/MediaProjectionStopController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/media/projection/MediaProjectionStopController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/projection/MediaProjectionStopController;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/KeyguardManager;->addKeyguardLockedStateListener(Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionStopController;->callStateChanged()V

    .line 106
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    invoke-virtual {v2, p1, p0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 111
    throw p0
.end method
