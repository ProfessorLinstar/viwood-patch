.class public Lcom/android/server/wm/SafeActivityOptions;
.super Ljava/lang/Object;
.source "SafeActivityOptions.java"


# instance fields
.field public mCallerOptions:Landroid/app/ActivityOptions;

.field public final mOriginalCallingPid:I

.field public final mOriginalCallingUid:I

.field public final mOriginalOptions:Landroid/app/ActivityOptions;

.field public mRealCallingPid:I

.field public mRealCallingUid:I


# direct methods
.method public static synthetic $r8$lambda$ACnWmPGx_zAftFgijPPx33008Tw(ILcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/TaskDisplayArea;
    .locals 1

    .line 428
    iget v0, p1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    if-ne v0, p0, :cond_0

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public constructor <init>(Landroid/app/ActivityOptions;II)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p2, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingPid:I

    .line 92
    iput p3, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingUid:I

    .line 93
    iput-object p1, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    return-void
.end method

.method public static abort(Lcom/android/server/wm/SafeActivityOptions;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/server/wm/SafeActivityOptions;->abort()V

    :cond_0
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;II)Lcom/android/server/wm/SafeActivityOptions;
    .locals 1

    if-eqz p0, :cond_0

    .line 80
    new-instance v0, Lcom/android/server/wm/SafeActivityOptions;

    invoke-static {p0}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;II)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isAssistant(Lcom/android/server/wm/ActivityTaskManagerService;I)Z
    .locals 5

    .line 438
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveVoiceInteractionServiceComponent:Landroid/content/ComponentName;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 443
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 445
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 447
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const-wide/32 v3, 0x10000000

    .line 445
    invoke-interface {v1, p0, v3, v4, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v0
.end method


# virtual methods
.method public final abort()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_0

    .line 217
    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 219
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    if-eqz p0, :cond_1

    .line 220
    invoke-static {p0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    :cond_1
    return-void
.end method

.method public final checkPermissions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    .line 254
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v6

    const-string v7, "android.permission.START_TASKS_FROM_RECENTS"

    const-string v8, " (pid="

    const-string v9, " from "

    const-string v10, "Permission Denial: starting "

    const-string v11, "ActivityTaskManager"

    const-string v12, ", uid="

    const/4 v13, -0x1

    if-ne v6, v13, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getDisableStartingWindow()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    iget-object v6, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 255
    invoke-virtual {v6, v5}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 256
    invoke-static {v7, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v6

    if-eq v6, v13, :cond_1

    goto :goto_0

    .line 259
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") with launchTaskId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 267
    :cond_2
    :goto_0
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getTransientLaunch()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "android.permission.MANAGE_ACTIVITY_TASKS"

    .line 268
    invoke-static {v6, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v6

    if-eq v6, v13, :cond_4

    :cond_3
    move-object/from16 v6, p5

    goto :goto_1

    .line 270
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: starting transient launch from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 276
    :goto_1
    invoke-virtual {v0, v6, v3}, Lcom/android/server/wm/SafeActivityOptions;->getLaunchTaskDisplayArea(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityTaskSupervisor;)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v14

    if-eqz v1, :cond_6

    if-eqz v14, :cond_6

    .line 278
    invoke-virtual {v3, v4, v5, v14, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->isCallerAllowedToLaunchOnTaskDisplayArea(IILcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo;)Z

    move-result v15

    if-eqz v15, :cond_5

    goto :goto_2

    .line 280
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") with launchTaskDisplayArea="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 287
    :cond_6
    :goto_2
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v14

    if-eqz v1, :cond_8

    if-eq v14, v13, :cond_8

    .line 289
    invoke-virtual {v3, v4, v5, v14, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v13

    if-eqz v13, :cond_7

    goto :goto_3

    .line 291
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") with launchDisplayId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    :cond_8
    :goto_3
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getLockTaskMode()Z

    move-result v13

    if-eqz v1, :cond_a

    if-eqz v13, :cond_a

    .line 300
    iget-object v13, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 301
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v13

    .line 302
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 301
    invoke-virtual {v13, v14, v15}, Lcom/android/server/wm/LockTaskController;->isPackageAllowlisted(ILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    goto :goto_4

    .line 303
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") with lockTaskMode=true"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 311
    :cond_a
    :goto_4
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getOverrideTaskTransition()Z

    move-result v13

    if-eqz v1, :cond_c

    if-eqz v13, :cond_c

    .line 313
    invoke-static {v7, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_c

    .line 316
    iget-object v7, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 317
    invoke-static {v7, v5}, Lcom/android/server/wm/SafeActivityOptions;->isAssistant(Lcom/android/server/wm/ActivityTaskManagerService;I)Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_5

    .line 318
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") with overrideTaskTransition=true"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 327
    :cond_c
    :goto_5
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getDismissKeyguardIfInsecure()Z

    move-result v7

    if-eqz v1, :cond_e

    if-eqz v7, :cond_e

    .line 329
    const-string v1, "android.permission.CONTROL_KEYGUARD"

    invoke-static {v1, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_6

    .line 332
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") with dismissKeyguardIfInsecure=true"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    :cond_e
    :goto_6
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v1

    .line 342
    const-string v7, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    if-eqz v1, :cond_10

    iget-object v1, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v7, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_f

    goto :goto_7

    .line 345
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") with remoteAnimationAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    :cond_10
    :goto_7
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 354
    iget-object v1, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v7, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_11

    goto :goto_8

    .line 357
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") with remoteTransition"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 365
    :cond_12
    :goto_8
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getLaunchedFromBubble()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getTaskAlwaysOnTop()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 366
    :cond_13
    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/SafeActivityOptions;->isSystemOrSystemUI(II)Z

    move-result v1

    if-nez v1, :cond_16

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") with"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getLaunchedFromBubble()Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_14

    const-string v0, " launchedFromBubble=true"

    goto :goto_9

    :cond_14
    move-object v0, v2

    :goto_9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getTaskAlwaysOnTop()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v2, " taskAlwaysOnTop=true"

    :cond_15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 378
    :cond_16
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    const/4 v7, 0x2

    if-eq v1, v7, :cond_19

    .line 387
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v1

    if-eqz v1, :cond_18

    .line 389
    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/SafeActivityOptions;->isSystemOrSystemUI(II)Z

    move-result v7

    if-nez v7, :cond_18

    const/4 v7, 0x4

    if-ne v1, v7, :cond_17

    .line 392
    iget-object v1, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 393
    invoke-static {v1, v5}, Lcom/android/server/wm/SafeActivityOptions;->isAssistant(Lcom/android/server/wm/ActivityTaskManagerService;I)Z

    move-result v1

    if-eqz v1, :cond_17

    return-void

    .line 398
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") with launchActivityType="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v0

    invoke-static {v0}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    return-void

    .line 379
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") with setLaunchWindowingMode=PINNED"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final cloneLaunchingOptions(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 120
    :cond_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p0

    .line 121
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions;->setLaunchTaskDisplayArea(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;

    move-result-object p0

    .line 122
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object p0

    .line 123
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getCallerDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions;->setCallerDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object p0

    .line 124
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions;->setLaunchRootTask(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;

    move-result-object p0

    .line 126
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v0

    .line 125
    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object p0

    .line 128
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result v0

    .line 127
    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object p0

    .line 129
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions;->setRemoteTransition(Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;

    move-result-object p0

    .line 130
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    return-object p0
.end method

.method public final getIntentString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 468
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "(no intent)"

    return-object p0
.end method

.method public getLaunchTaskDisplayArea(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityTaskSupervisor;)Lcom/android/server/wm/TaskDisplayArea;
    .locals 3

    .line 411
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 413
    invoke-virtual {p0}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    .line 420
    :cond_1
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayAreaFeatureId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 422
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v2

    if-ne v2, v1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    .line 423
    :cond_2
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result p1

    .line 424
    :goto_1
    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 425
    invoke-virtual {p2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 427
    new-instance p0, Lcom/android/server/wm/SafeActivityOptions$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0}, Lcom/android/server/wm/SafeActivityOptions$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskDisplayArea;

    :cond_3
    return-object p0
.end method

.method public getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;
    .locals 8

    .line 172
    iget-object v5, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    if-eqz v5, :cond_0

    .line 173
    iget v6, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingPid:I

    iget v7, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingUid:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/SafeActivityOptions;->checkPermissions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;II)V

    .line 175
    iget-object v1, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    iget v2, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingPid:I

    iget v3, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingUid:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wm/SafeActivityOptions;->setCallingPidUidForRemoteAnimationAdapter(Landroid/app/ActivityOptions;II)V

    .line 178
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    if-eqz v5, :cond_1

    .line 179
    iget v6, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingPid:I

    iget v7, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingUid:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/SafeActivityOptions;->checkPermissions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;II)V

    .line 181
    iget-object v1, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    iget v2, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingPid:I

    iget v3, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingUid:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wm/SafeActivityOptions;->setCallingPidUidForRemoteAnimationAdapter(Landroid/app/ActivityOptions;II)V

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    iget-object v2, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/SafeActivityOptions;->mergeActivityOptions(Landroid/app/ActivityOptions;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public getOptions(Lcom/android/server/wm/ActivityRecord;)Landroid/app/ActivityOptions;
    .locals 3

    .line 151
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public getOptions(Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;
    .locals 1

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public getOriginalOptions()Landroid/app/ActivityOptions;
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    return-object p0
.end method

.method public final isSystemOrSystemUI(II)Z
    .locals 1

    const/16 p0, 0x3e8

    const/4 v0, 0x1

    if-ne p2, p0, :cond_0

    return v0

    .line 462
    :cond_0
    const-string p0, "android.permission.STATUS_BAR_SERVICE"

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public mergeActivityOptions(Landroid/app/ActivityOptions;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;
    .locals 0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    return-object p1

    .line 243
    :cond_1
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    .line 244
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 245
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 246
    invoke-static {p0}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public popAppVerificationBundle()Landroid/os/Bundle;
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->popAppVerificationBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public selectiveCloneLaunchOptions()Lcom/android/server/wm/SafeActivityOptions;
    .locals 5

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SafeActivityOptions;->cloneLaunchingOptions(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SafeActivityOptions;->cloneLaunchingOptions(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 109
    :cond_0
    new-instance v2, Lcom/android/server/wm/SafeActivityOptions;

    iget v3, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingPid:I

    iget v4, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingUid:I

    invoke-direct {v2, v0, v3, v4}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;II)V

    .line 111
    iput-object v1, v2, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    .line 112
    iget v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingPid:I

    iput v0, v2, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingPid:I

    .line 113
    iget p0, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingUid:I

    iput p0, v2, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingUid:I

    return-object v2
.end method

.method public setCallerOptions(Landroid/app/ActivityOptions;II)V
    .locals 0

    .line 140
    iput p2, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingPid:I

    .line 141
    iput p3, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingUid:I

    .line 142
    iput-object p1, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    return-void
.end method

.method public final setCallingPidUidForRemoteAnimationAdapter(Landroid/app/ActivityOptions;II)V
    .locals 0

    .line 189
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 193
    :cond_0
    sget p1, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    if-ne p2, p1, :cond_1

    .line 194
    const-string p0, "ActivityTaskManager"

    const-string p1, "Safe activity options constructed after clearing calling id"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 197
    :cond_1
    invoke-virtual {p0, p2, p3}, Landroid/view/RemoteAnimationAdapter;->setCallingPidUid(II)V

    return-void
.end method
