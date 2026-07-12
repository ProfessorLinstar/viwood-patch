.class public final Lcom/android/server/HsumBootUserInitializer;
.super Ljava/lang/Object;
.source "HsumBootUserInitializer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HsumBootUserInitializer"


# instance fields
.field public final mAms:Lcom/android/server/am/ActivityManagerService;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mDeviceProvisionedObserver:Landroid/database/ContentObserver;

.field public final mPms:Lcom/android/server/pm/PackageManagerService;

.field public final mShouldAlwaysHaveMainUser:Z

.field public final mUmi:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContentResolver(Lcom/android/server/HsumBootUserInitializer;)Landroid/content/ContentResolver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/HsumBootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceProvisionedObserver(Lcom/android/server/HsumBootUserInitializer;)Landroid/database/ContentObserver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/HsumBootUserInitializer;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misDeviceProvisioned(Lcom/android/server/HsumBootUserInitializer;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/HsumBootUserInitializer;->isDeviceProvisioned()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/HsumBootUserInitializer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/UserManagerInternal;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/pm/PackageManagerService;Landroid/content/ContentResolver;Z)V
    .locals 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/server/HsumBootUserInitializer$1;

    new-instance v1, Landroid/os/Handler;

    .line 50
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/HsumBootUserInitializer$1;-><init>(Lcom/android/server/HsumBootUserInitializer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/HsumBootUserInitializer;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 84
    iput-object p1, p0, Lcom/android/server/HsumBootUserInitializer;->mUmi:Lcom/android/server/pm/UserManagerInternal;

    .line 85
    iput-object p2, p0, Lcom/android/server/HsumBootUserInitializer;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 86
    iput-object p3, p0, Lcom/android/server/HsumBootUserInitializer;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 87
    iput-object p4, p0, Lcom/android/server/HsumBootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    .line 88
    iput-boolean p5, p0, Lcom/android/server/HsumBootUserInitializer;->mShouldAlwaysHaveMainUser:Z

    return-void
.end method

.method public static createInstance(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/pm/PackageManagerService;Landroid/content/ContentResolver;Z)Lcom/android/server/HsumBootUserInitializer;
    .locals 6

    .line 72
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 75
    :cond_0
    new-instance v0, Lcom/android/server/HsumBootUserInitializer;

    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    .line 76
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/HsumBootUserInitializer;-><init>(Lcom/android/server/pm/UserManagerInternal;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/pm/PackageManagerService;Landroid/content/ContentResolver;Z)V

    return-object v0
.end method


# virtual methods
.method public final createMainUserIfNeeded()V
    .locals 8

    .line 109
    iget-object v0, p0, Lcom/android/server/HsumBootUserInitializer;->mUmi:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    .line 111
    sget-object p0, Lcom/android/server/HsumBootUserInitializer;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Found existing MainUser, userId=%d"

    invoke-static {p0, v1, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 115
    :cond_0
    sget-object v0, Lcom/android/server/HsumBootUserInitializer;->TAG:Ljava/lang/String;

    const-string v1, "Creating a new MainUser"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :try_start_0
    iget-object v2, p0, Lcom/android/server/HsumBootUserInitializer;->mUmi:Lcom/android/server/pm/UserManagerInternal;

    const-string v4, "android.os.usertype.full.SECONDARY"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x4002

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/UserManagerInternal;->createUserEvenWhenDisallowed(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 123
    const-string v1, "Successfully created MainUser, userId=%d"

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 125
    sget-object v0, Lcom/android/server/HsumBootUserInitializer;->TAG:Ljava/lang/String;

    const-string v1, "Initial bootable MainUser creation failed"

    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public init(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 2

    .line 99
    sget-object v0, Lcom/android/server/HsumBootUserInitializer;->TAG:Ljava/lang/String;

    const-string v1, "init())"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-boolean v0, p0, Lcom/android/server/HsumBootUserInitializer;->mShouldAlwaysHaveMainUser:Z

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "createMainUserIfNeeded"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/server/HsumBootUserInitializer;->createMainUserIfNeeded()V

    .line 104
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_0
    return-void
.end method

.method public final isDeviceProvisioned()Z
    .locals 3

    const/4 v0, 0x0

    .line 166
    :try_start_0
    iget-object p0, p0, Lcom/android/server/HsumBootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "device_provisioned"

    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 169
    sget-object v1, Lcom/android/server/HsumBootUserInitializer;->TAG:Ljava/lang/String;

    const-string v2, "DEVICE_PROVISIONED setting not found."

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public final observeDeviceProvisioning()V
    .locals 3

    .line 153
    invoke-virtual {p0}, Lcom/android/server/HsumBootUserInitializer;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/server/HsumBootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "device_provisioned"

    .line 158
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/server/HsumBootUserInitializer;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 157
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final switchToBootUser(I)V
    .locals 3

    .line 202
    sget-object v0, Lcom/android/server/HsumBootUserInitializer;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Switching to boot user %d"

    invoke-static {v0, v2, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    iget-object p0, p0, Lcom/android/server/HsumBootUserInitializer;->mAms:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->startUserInForegroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 206
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Failed to start user %d in foreground"

    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public systemRunning(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 4

    .line 136
    invoke-virtual {p0}, Lcom/android/server/HsumBootUserInitializer;->observeDeviceProvisioning()V

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/server/HsumBootUserInitializer;->unlockSystemUser(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 140
    :try_start_0
    const-string v0, "getBootUser"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/server/HsumBootUserInitializer;->mUmi:Lcom/android/server/pm/UserManagerInternal;

    iget-object v1, p0, Lcom/android/server/HsumBootUserInitializer;->mPms:Lcom/android/server/pm/PackageManagerService;

    const-string v2, "android.hardware.type.automotive"

    const/4 v3, 0x0

    .line 142
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v1

    .line 141
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getBootUser(Z)I

    move-result v0

    .line 143
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchToBootUser-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, v0}, Lcom/android/server/HsumBootUserInitializer;->switchToBootUser(I)V

    .line 146
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_0
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 148
    :catch_0
    sget-object p0, Lcom/android/server/HsumBootUserInitializer;->TAG:Ljava/lang/String;

    const-string p1, "Failed to switch to boot user since there isn\'t one."

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final unlockSystemUser(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 4

    .line 177
    sget-object v0, Lcom/android/server/HsumBootUserInitializer;->TAG:Ljava/lang/String;

    const-string v1, "Unlocking system user"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string/jumbo v1, "unlock-system-user"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 182
    :try_start_0
    const-string v1, "am.startUser"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/android/server/HsumBootUserInitializer;->mAms:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v1

    .line 185
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v1, :cond_0

    .line 187
    const-string v1, "could not restart system user in background; trying unlock instead"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v1, "am.unlockUser"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 189
    iget-object p0, p0, Lcom/android/server/HsumBootUserInitializer;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v2, v3, v3, v3}, Lcom/android/server/am/ActivityManagerService;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    move-result p0

    .line 191
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez p0, :cond_0

    .line 193
    const-string p0, "could not unlock system user either"

    invoke-static {v0, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 197
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :goto_1
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 198
    throw p0
.end method
