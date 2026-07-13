.class public Lcom/android/server/contextualsearch/ContextualSearchManagerService;
.super Lcom/android/server/SystemService;
.source "ContextualSearchManagerService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ContextualSearchManagerService"


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAssistDataCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

.field public final mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

.field public final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/PackageManagerInternal;

.field public mStateCallback:Landroid/app/contextualsearch/IContextualSearchCallback;

.field public mTemporaryHandler:Landroid/os/Handler;

.field public mTemporaryPackage:Ljava/lang/String;

.field public mTokenValidDurationMs:J

.field public final mUserManager:Landroid/os/UserManager;

.field public final mWmInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAssistDataRequester(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Lcom/android/server/am/AssistDataRequester;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Landroid/content/pm/PackageManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStateCallback(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Landroid/app/contextualsearch/IContextualSearchCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mStateCallback:Landroid/app/contextualsearch/IContextualSearchCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmStateCallback(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Landroid/app/contextualsearch/IContextualSearchCallback;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mStateCallback:Landroid/app/contextualsearch/IContextualSearchCallback;

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceForegroundApp(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->enforceForegroundApp(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforcePermission(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->enforcePermission(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetContextualSearchIntent(Lcom/android/server/contextualsearch/ContextualSearchManagerService;IILjava/lang/String;Landroid/app/contextualsearch/CallbackToken;)Landroid/content/Intent;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->getContextualSearchIntent(IILjava/lang/String;Landroid/app/contextualsearch/CallbackToken;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetTokenValidDurationMs(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)J
    .locals 2

    .line 0
    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->getTokenValidDurationMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$minvokeContextualSearchIntent(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Landroid/content/Intent;I)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->invokeContextualSearchIntent(Landroid/content/Intent;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 117
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mLock:Ljava/lang/Object;

    .line 120
    new-instance v4, Lcom/android/server/contextualsearch/ContextualSearchManagerService$1;

    invoke-direct {v4, p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$1;-><init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)V

    iput-object v4, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAssistDataCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryPackage:Ljava/lang/String;

    const-wide/32 v0, 0x927c0

    .line 166
    iput-wide v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTokenValidDurationMs:J

    .line 175
    iput-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    .line 176
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 177
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 176
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 178
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 179
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 178
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 180
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    .line 181
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 182
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mUserManager:Landroid/os/UserManager;

    .line 184
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 185
    new-instance v0, Lcom/android/server/am/AssistDataRequester;

    const-string/jumbo v1, "window"

    .line 187
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    const-class v1, Landroid/app/AppOpsManager;

    .line 188
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/app/AppOpsManager;

    const/16 v6, 0x31

    const/16 v7, 0x32

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/AssistDataRequester;-><init>(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/app/AppOpsManager;Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;Ljava/lang/Object;II)V

    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    .line 191
    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->updateSecureSetting()V

    return-void
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .locals 2

    .line 406
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 407
    const-string v1, "android.permission.ACCESS_CONTEXTUAL_SEARCH"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->isCallerTemporary()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 409
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission Denial: Cannot call "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 411
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final enforceForegroundApp(Ljava/lang/String;)V
    .locals 3

    .line 416
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 417
    iget-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 418
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, v0}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result p0

    const/4 v2, 0x2

    if-gt p0, v2, :cond_0

    return-void

    .line 422
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: Cannot call "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", package="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " without a foreground activity."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 425
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final enforceOverridingPermission(Ljava/lang/String;)V
    .locals 1

    .line 430
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_1

    .line 431
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    if-eqz p0, :cond_1

    .line 432
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission Denial: Cannot override Contextual Search. Called "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 435
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final getContextualSearchIntent(IILjava/lang/String;Landroid/app/contextualsearch/CallbackToken;)Landroid/content/Intent;
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p2

    .line 318
    invoke-virtual {v1, v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->getResolvedLaunchIntent(I)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const v4, 0x10058000

    .line 325
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 327
    const-string v4, "android.app.contextualsearch.extra.INVOCATION_TIME_MS"

    .line 329
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 327
    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 330
    const-string v4, "android.app.contextualsearch.extra.ENTRYPOINT"

    move/from16 v5, p1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 331
    const-string v4, "android.app.contextualsearch.extra.TOKEN"

    move-object/from16 v5, p4

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 339
    iget-object v4, v1, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isAssistDataAllowed()Z

    move-result v4

    .line 340
    iget-object v5, v1, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopVisibleActivities()Ljava/util/List;

    move-result-object v5

    .line 341
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 342
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 344
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/ActivityAssistInfo;

    if-eqz v4, :cond_2

    .line 347
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityAssistInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityAssistInfo;->getActivityToken()Landroid/os/IBinder;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_2
    iget-object v9, v1, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityAssistInfo;->getUserId()I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    .line 354
    :cond_3
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    iget-object v5, v1, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v13, v8, v9, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v12

    if-eqz v4, :cond_4

    move v5, v6

    .line 358
    :try_start_0
    iget-object v6, v1, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v6 .. v14}, Lcom/android/server/am/AssistDataRequester;->requestAssistData(Ljava/util/List;ZZZZILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 368
    sget-object v6, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->TAG:Ljava/lang/String;

    const-string v7, "Could not request assist data"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_4
    move v5, v6

    .line 371
    :goto_1
    iget-object v0, v1, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowManagerInternal;->takeContextualSearchScreenshot(I)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 373
    invoke-virtual {v0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_5
    if-eqz v3, :cond_6

    .line 376
    const-string v1, "android.app.contextualsearch.extra.FLAG_SECURE_FOUND"

    .line 377
    invoke-virtual {v0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result v0

    .line 376
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v4, :cond_6

    .line 380
    const-string v0, "android.app.contextualsearch.extra.SCREENSHOT"

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->asShared()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 383
    :cond_6
    const-string v0, "android.app.contextualsearch.extra.IS_MANAGED_PROFILE_VISIBLE"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v4, :cond_7

    .line 387
    const-string v0, "android.app.contextualsearch.extra.VISIBLE_PACKAGE_NAMES"

    invoke-virtual {v2, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_7
    return-object v2
.end method

.method public final getContextualSearchPackageName()Ljava/lang/String;
    .locals 2

    .line 209
    monitor-enter p0

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104023c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 212
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getResolvedLaunchIntent(I)Landroid/content/Intent;
    .locals 4

    .line 283
    monitor-enter p0

    .line 286
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->getContextualSearchPackageName()Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 290
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 292
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.app.contextualsearch.action.LAUNCH_CONTEXTUAL_SEARCH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v3, 0xc0000

    invoke-virtual {v0, v1, v3, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-nez p1, :cond_1

    .line 299
    monitor-exit p0

    return-object v2

    .line 301
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_2

    .line 304
    monitor-exit p0

    return-object v2

    .line 306
    :cond_2
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 307
    monitor-exit p0

    return-object v1

    .line 308
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getTokenValidDurationMs()J
    .locals 2

    .line 277
    monitor-enter p0

    .line 278
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTokenValidDurationMs:J

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 279
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final invokeContextualSearchIntent(Landroid/content/Intent;I)I
    .locals 10

    .line 397
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeCustomTaskAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x1

    .line 399
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setDisableStartingWindow(Z)V

    .line 400
    iget-object v2, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    .line 401
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const/4 v7, 0x0

    .line 402
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    move-object v3, p1

    move v9, p2

    .line 400
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityWithScreenshot(Landroid/content/Intent;Ljava/lang/String;IILandroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result p0

    return p0
.end method

.method public final isCallerTemporary()Z
    .locals 3

    .line 440
    monitor-enter p0

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 444
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStart()V
    .locals 2

    .line 196
    new-instance v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;-><init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Lcom/android/server/contextualsearch/ContextualSearchManagerService-IA;)V

    const-string v1, "contextual_search"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public resetTemporaryPackage()V
    .locals 3

    .line 216
    monitor-enter p0

    .line 217
    :try_start_0
    const-string/jumbo v0, "resetTemporaryPackage"

    invoke-virtual {p0, v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->enforceOverridingPermission(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 219
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 220
    iput-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryHandler:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 223
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryPackage:Ljava/lang/String;

    .line 224
    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->updateSecureSetting()V

    .line 225
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetTokenValidDurationMs()V
    .locals 1

    const v0, 0x927c0

    .line 260
    invoke-virtual {p0, v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->setTokenValidDurationMs(I)V

    return-void
.end method

.method public setTemporaryPackage(Ljava/lang/String;I)V
    .locals 5

    .line 229
    monitor-enter p0

    .line 230
    :try_start_0
    const-string/jumbo v0, "setTemporaryPackage"

    invoke-virtual {p0, v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->enforceOverridingPermission(Ljava/lang/String;)V

    const v0, 0x1d4c0

    if-gt p2, v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;-><init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryHandler:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 250
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 252
    :goto_0
    iput-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryPackage:Ljava/lang/String;

    .line 253
    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->updateSecureSetting()V

    .line 254
    iget-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 256
    monitor-exit p0

    return-void

    .line 233
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Max duration is 120000 (called with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 256
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setTokenValidDurationMs(I)V
    .locals 3

    .line 264
    monitor-enter p0

    .line 265
    :try_start_0
    const-string/jumbo v0, "setTokenValidDurationMs"

    invoke-virtual {p0, v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->enforceOverridingPermission(Ljava/lang/String;)V

    const v0, 0x927c0

    if-gt p1, v0, :cond_0

    int-to-long v0, p1

    .line 271
    iput-wide v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTokenValidDurationMs:J

    .line 273
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Token max duration is 600000 (called with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final updateSecureSetting()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    .line 203
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "contextual_search_package"

    .line 205
    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->getContextualSearchPackageName()Ljava/lang/String;

    move-result-object p0

    .line 202
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
