.class public Lcom/android/server/wm/ActivityStartController;
.super Ljava/lang/Object;
.source "ActivityStartController.java"


# instance fields
.field public mCheckedForSetup:Z

.field public final mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

.field public mHomeLaunchingTaskDisplayAreas:Ljava/util/ArrayList;

.field public mInExecution:Z

.field public mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

.field public mLastHomeActivityStartResult:I

.field public mLastStarter:Lcom/android/server/wm/ActivityStarter;

.field public final mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public static synthetic $r8$lambda$PRaEnwcckEo4XKtmHnHmsUkmZLo(I)[Landroid/content/Intent;
    .locals 0

    .line 433
    new-array p0, p0, [Landroid/content/Intent;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 3

    .line 112
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    new-instance v1, Lcom/android/server/wm/ActivityStarter$DefaultFactory;

    new-instance v2, Lcom/android/server/wm/ActivityStartInterceptor;

    invoke-direct {v2, p1, v0}, Lcom/android/server/wm/ActivityStartInterceptor;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;)V

    invoke-direct {v1, p1, v0, v2}, Lcom/android/server/wm/ActivityStarter$DefaultFactory;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStartInterceptor;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityStartController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStarter$Factory;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStarter$Factory;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 87
    new-array v0, v0, [Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    .line 99
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStartController;->mInExecution:Z

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mHomeLaunchingTaskDisplayAreas:Ljava/util/ArrayList;

    .line 120
    iput-object p1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 121
    iput-object p2, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 122
    iput-object p3, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    .line 123
    invoke-interface {p3, p0}, Lcom/android/server/wm/ActivityStarter$Factory;->setController(Lcom/android/server/wm/ActivityStartController;)V

    .line 124
    new-instance p2, Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    iget-object p3, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {p2, p3, p1}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;-><init>(Lcom/android/server/wm/WindowManagerGlobalLock;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    return-void
.end method


# virtual methods
.method public checkTargetUser(IZIILjava/lang/String;)I
    .locals 0

    if-eqz p2, :cond_0

    .line 278
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p3, p4, p1, p5}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p0

    return p0

    .line 281
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->ensureNotSpecialUser(I)V

    return p1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 707
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    const-string v4, "  "

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 708
    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 710
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityStartController;->dumpLastHomeActivityStartResult(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 711
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 712
    const-string v1, "mLastHomeActivityStartRecord:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 713
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3, v0}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    move v1, v0

    .line 716
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-eqz v3, :cond_5

    if-eqz v2, :cond_3

    .line 718
    invoke-virtual {v3, p3}, Lcom/android/server/wm/ActivityStarter;->relatedToPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_5

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 720
    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    :cond_3
    if-nez v1, :cond_4

    .line 725
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityStartController;->dumpLastHomeActivityStartResult(Ljava/io/PrintWriter;Ljava/lang/String;)V

    move v1, v0

    .line 727
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 728
    const-string p3, "mLastStarter:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 729
    iget-object p3, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, p1, v3}, Lcom/android/server/wm/ActivityStarter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    goto :goto_2

    .line 737
    :cond_5
    iget-object p3, p0, Lcom/android/server/wm/ActivityStartController;->mHomeLaunchingTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    .line 739
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 740
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHomeLaunchingTaskDisplayAreas:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mHomeLaunchingTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_1
    if-nez v0, :cond_7

    .line 744
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 745
    const-string p0, "(nothing)"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public dumpLastHomeActivityStartResult(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 697
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 698
    const-string p2, "mLastHomeActivityStartResult="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 699
    iget p0, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartResult:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public getLastStartActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 693
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPendingRemoteAnimationRegistry()Lcom/android/server/wm/PendingRemoteAnimationRegistry;
    .locals 0

    .line 689
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    return-object p0
.end method

.method public isInExecution()Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityStartController;->mInExecution:Z

    return p0
.end method

.method public obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {p0}, Lcom/android/server/wm/ActivityStarter$Factory;->obtain()Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityStarter;->setReason(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    return-object p0
.end method

.method public onExecutionComplete(Lcom/android/server/wm/ActivityStarter;)V
    .locals 1

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStartController;->mInExecution:Z

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {v0}, Lcom/android/server/wm/ActivityStarter$Factory;->obtain()Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->set(Lcom/android/server/wm/ActivityStarter;)V

    .line 151
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {p0, p1}, Lcom/android/server/wm/ActivityStarter$Factory;->recycle(Lcom/android/server/wm/ActivityStarter;)V

    return-void
.end method

.method public onExecutionStarted()V
    .locals 1

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStartController;->mInExecution:Z

    return-void
.end method

.method public postStartActivityProcessingForLastStarter(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;)V
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-nez p0, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;)V

    return-void
.end method

.method public registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V
    .locals 0

    .line 685
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->addPendingAnimation(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V

    return-void
.end method

.method public startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Z)I
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p7

    move-object/from16 v11, p8

    if-eqz v0, :cond_1d

    if-eqz v11, :cond_1c

    .line 400
    array-length v3, v0

    array-length v4, v11

    if-ne v3, v4, :cond_1b

    if-eqz p3, :cond_0

    move/from16 v12, p3

    goto :goto_0

    .line 406
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    move v12, v3

    :goto_0
    const/4 v13, -0x1

    move/from16 v3, p4

    if-eq v3, v13, :cond_1

    :goto_1
    move v14, v3

    goto :goto_2

    .line 409
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    goto :goto_1

    :goto_2
    if-ltz p2, :cond_2

    move/from16 v15, p2

    move v10, v13

    goto :goto_3

    :cond_2
    if-nez v2, :cond_3

    move v10, v12

    move v15, v14

    goto :goto_3

    :cond_3
    move v10, v13

    move v15, v10

    :goto_3
    const/16 v3, -0x2710

    .line 420
    invoke-static {v15, v14, v3}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v8

    .line 422
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 423
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    const/16 v18, 0x0

    if-eqz p10, :cond_4

    .line 430
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/wm/SafeActivityOptions;->selectiveCloneLaunchOptions()Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v4

    move-object/from16 v19, v4

    goto :goto_4

    :cond_4
    move-object/from16 v19, v18

    .line 433
    :goto_4
    :try_start_0
    new-instance v4, Lcom/android/server/wm/ActivityStartController$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/wm/ActivityStartController$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->filterNotNull([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Landroid/content/Intent;

    .line 434
    array-length v5, v4

    new-array v6, v5, [Lcom/android/server/wm/ActivityStarter;

    const/16 v20, 0x0

    move/from16 v7, v20

    .line 437
    :goto_5
    array-length v0, v4

    const/4 v9, 0x1

    if-ge v7, v0, :cond_e

    .line 438
    aget-object v0, v4, v7

    .line 442
    invoke-virtual {v0}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v21

    if-nez v21, :cond_d

    .line 447
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    if-eqz v21, :cond_5

    move/from16 v22, v9

    :goto_6
    move-object/from16 v21, v4

    goto :goto_7

    :cond_5
    move/from16 v22, v20

    goto :goto_6

    .line 449
    :goto_7
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 452
    invoke-virtual {v4, v9}, Landroid/content/Intent;->removeExtendedFlags(I)V

    move-object/from16 v23, v3

    .line 455
    iget-object v3, v1, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    move/from16 v24, v5

    aget-object v5, v11, v7

    move-object/from16 v25, v6

    const/4 v6, 0x0

    move/from16 v26, v7

    const/4 v7, 0x0

    move v9, v8

    move-object/from16 v29, v21

    move-object/from16 v28, v23

    move/from16 v30, v24

    move/from16 v31, v26

    move/from16 v8, p11

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;III)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    move v8, v9

    .line 458
    iget-object v3, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    move/from16 v5, p11

    invoke-virtual {v3, v0, v5}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 461
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->isValid(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 463
    invoke-virtual {v4}, Landroid/content/Intent;->getCreatorToken()Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;

    .line 464
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->getCreatorUid()I

    move-result v6

    if-eq v6, v8, :cond_6

    .line 465
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->getCreatorUid()I

    move-result v6

    .line 466
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    goto :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_1a

    :cond_6
    move v6, v13

    move-object/from16 v7, v18

    :goto_8
    if-eqz v3, :cond_a

    .line 474
    :try_start_1
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v9, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 477
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 475
    invoke-interface {v0, v4, v8, v13, v9}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v13
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, -0x1

    if-eq v6, v9, :cond_8

    .line 485
    :try_start_2
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v9, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 p2, v3

    :try_start_3
    iget-object v3, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 488
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 486
    invoke-interface {v0, v4, v6, v3, v9}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v0

    if-nez v13, :cond_7

    move-object v13, v0

    goto :goto_9

    .line 492
    :cond_7
    invoke-virtual {v13, v0}, Lcom/android/server/uri/NeededUriGrants;->merge(Lcom/android/server/uri/NeededUriGrants;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_9
    move-object/from16 v9, p5

    move v11, v10

    move-object v0, v13

    move-object/from16 v13, p2

    goto :goto_c

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    move-object/from16 p2, v3

    .line 495
    :goto_a
    :try_start_4
    iget-object v3, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    move-object v5, v4

    const/4 v4, 0x2

    move-object v9, v13

    move-object/from16 v13, p2

    move-object/from16 p2, v9

    move-object/from16 v9, p5

    move v11, v10

    move-object v10, v0

    invoke-static/range {v3 .. v10}, Lcom/android/server/wm/ActivityStarter;->logAndThrowExceptionForIntentRedirect(Landroid/content/Context;ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;Ljava/lang/SecurityException;)V

    move-object v4, v5

    goto :goto_b

    :cond_8
    move-object/from16 v9, p5

    move v11, v10

    move-object/from16 p2, v13

    move-object v13, v3

    :goto_b
    move-object/from16 v0, p2

    .line 501
    :goto_c
    iget-object v3, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_9

    .line 506
    iget v5, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v10, v28

    invoke-virtual {v10, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_d
    move-object/from16 v3, v29

    goto :goto_e

    .line 503
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :catch_2
    const-string v0, "ActivityTaskManager"

    const-string v1, "Not allowed to start activity since no uri permission."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 588
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, -0x60

    return v0

    :cond_a
    move-object/from16 v9, p5

    move-object v13, v3

    move v11, v10

    move-object/from16 v10, v28

    move-object/from16 v0, v18

    goto :goto_d

    .line 510
    :goto_e
    :try_start_5
    array-length v5, v3

    move-object/from16 v21, v3

    const/4 v3, 0x1

    sub-int/2addr v5, v3

    move/from16 v3, v31

    if-ne v3, v5, :cond_b

    const/4 v5, 0x1

    goto :goto_f

    :cond_b
    move/from16 v5, v20

    :goto_f
    if-eqz v5, :cond_c

    move/from16 v23, v8

    move-object/from16 v8, p10

    :goto_10
    move/from16 v26, v3

    move-object/from16 v3, p12

    goto :goto_11

    :cond_c
    move/from16 v23, v8

    move-object/from16 v8, v19

    goto :goto_10

    .line 514
    :goto_11
    invoke-virtual {v1, v4, v3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 515
    invoke-virtual {v4, v0}, Lcom/android/server/wm/ActivityStarter;->setIntentGrants(Lcom/android/server/uri/NeededUriGrants;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 516
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    aget-object v4, p8, v26

    .line 517
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 518
    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    const/4 v4, -0x1

    .line 519
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 520
    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 521
    invoke-virtual {v0, v15}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 522
    invoke-virtual {v0, v9}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move-object/from16 v13, p6

    .line 523
    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 524
    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityStarter;->setIntentCreatorUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 525
    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityStarter;->setIntentCreatorPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 526
    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 527
    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 528
    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move/from16 v6, v22

    .line 529
    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 533
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityStarter;->setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move-object/from16 v5, p13

    .line 534
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityStarter;->setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move/from16 v6, p14

    .line 535
    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityStarter;->setAllowBalExemptionForSystemProcess(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    aput-object v0, v25, v26

    add-int/lit8 v7, v26, 0x1

    move v13, v4

    move-object v3, v10

    move v10, v11

    move-object/from16 v4, v21

    move/from16 v8, v23

    move-object/from16 v6, v25

    move/from16 v5, v30

    move-object/from16 v11, p8

    goto/16 :goto_5

    .line 443
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File descriptors passed in Intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object/from16 v9, p5

    move-object v10, v3

    move/from16 v30, v5

    move-object/from16 v25, v6

    move/from16 v23, v8

    .line 538
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_11

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "startActivities: different apps ["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v2

    move/from16 v3, v20

    :goto_12
    if-ge v3, v2, :cond_10

    .line 542
    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, -0x1

    if-ne v3, v4, :cond_f

    const-string v4, "]"

    goto :goto_13

    :cond_f
    const-string v4, ", "

    :goto_13
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 544
    :cond_10
    const-string v2, " from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    const-string v2, "ActivityTaskManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    .line 549
    :cond_11
    new-array v0, v3, [Lcom/android/server/wm/ActivityRecord;

    .line 551
    iget-object v2, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 552
    :try_start_6
    iget-object v3, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 556
    iget-object v3, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    invoke-virtual {v3}, Lcom/android/server/wm/StartingSurfaceController;->beginDeferAddStartingWindow()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v5, p9

    move/from16 v4, v20

    move/from16 v3, v30

    :goto_14
    if-ge v4, v3, :cond_19

    .line 559
    :try_start_7
    aget-object v6, v25, v4

    invoke-virtual {v6, v5}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 560
    invoke-virtual {v5, v0}, Lcom/android/server/wm/ActivityStarter;->setOutActivity([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v5

    if-gez v5, :cond_14

    const/16 v27, 0x1

    add-int/lit8 v4, v4, 0x1

    :goto_15
    if-ge v4, v3, :cond_12

    .line 564
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    aget-object v6, v25, v4

    invoke-interface {v0, v6}, Lcom/android/server/wm/ActivityStarter$Factory;->recycle(Lcom/android/server/wm/ActivityStarter;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :catchall_1
    move-exception v0

    goto :goto_18

    .line 582
    :cond_12
    :try_start_8
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    if-eqz p10, :cond_13

    .line 583
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/wm/SafeActivityOptions;->getOriginalOptions()Landroid/app/ActivityOptions;

    move-result-object v18

    :cond_13
    move-object/from16 v3, v18

    goto :goto_16

    :catchall_2
    move-exception v0

    goto/16 :goto_19

    .line 582
    :goto_16
    invoke-virtual {v0, v3}, Lcom/android/server/wm/StartingSurfaceController;->endDeferAddStartingWindow(Landroid/app/ActivityOptions;)V

    .line 584
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 588
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_14
    const/16 v27, 0x1

    .line 568
    :try_start_9
    aget-object v5, v0, v20

    if-eqz v5, :cond_15

    .line 569
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v6

    move/from16 v8, v23

    if-ne v6, v8, :cond_16

    .line 572
    iget-object v5, v5, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    goto :goto_17

    :cond_15
    move/from16 v8, v23

    :cond_16
    add-int/lit8 v5, v3, -0x1

    if-ge v4, v5, :cond_17

    add-int/lit8 v5, v4, 0x1

    .line 577
    aget-object v5, v25, v5

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStarter;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_17
    move-object/from16 v5, p9

    :goto_17
    add-int/lit8 v4, v4, 0x1

    move/from16 v23, v8

    goto :goto_14

    .line 582
    :goto_18
    :try_start_a
    iget-object v3, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    if-eqz p10, :cond_18

    .line 583
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/wm/SafeActivityOptions;->getOriginalOptions()Landroid/app/ActivityOptions;

    move-result-object v18

    :cond_18
    move-object/from16 v4, v18

    .line 582
    invoke-virtual {v3, v4}, Lcom/android/server/wm/StartingSurfaceController;->endDeferAddStartingWindow(Landroid/app/ActivityOptions;)V

    .line 584
    iget-object v1, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 585
    throw v0

    .line 582
    :cond_19
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    if-eqz p10, :cond_1a

    .line 583
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/wm/SafeActivityOptions;->getOriginalOptions()Landroid/app/ActivityOptions;

    move-result-object v18

    :cond_1a
    move-object/from16 v3, v18

    .line 582
    invoke-virtual {v0, v3}, Lcom/android/server/wm/StartingSurfaceController;->endDeferAddStartingWindow(Landroid/app/ActivityOptions;)V

    .line 584
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 586
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 588
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v20

    .line 586
    :goto_19
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 588
    :goto_1a
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 589
    throw v0

    .line 401
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "intents are length different than resolvedTypes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "resolvedTypes is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "intents is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final startActivitiesInPackage(IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I
    .locals 21

    .line 380
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 381
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-string v5, "startActivityInPackage"

    move-object/from16 v0, p0

    move/from16 v1, p10

    move/from16 v2, p11

    .line 380
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v17

    const/4 v7, 0x0

    .line 384
    const-string v18, "startActivityInPackage"

    move-object/from16 v6, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v19, p12

    move/from16 v20, p13

    invoke-virtual/range {v6 .. v20}, Lcom/android/server/wm/ActivityStartController;->startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0

    return v0
.end method

.method public final startActivitiesInPackage(ILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I
    .locals 14

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    .line 351
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/wm/ActivityStartController;->startActivitiesInPackage(IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result p0

    return p0
.end method

.method public final startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I
    .locals 6

    move-object v0, p0

    move v3, p2

    move v4, p3

    move/from16 v1, p13

    move-object/from16 v5, p15

    move/from16 v2, p16

    .line 308
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v1

    .line 312
    invoke-virtual {p0, p6, v5}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 313
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 314
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 315
    invoke-virtual {p0, p3}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 316
    invoke-virtual {p0, p4}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 317
    invoke-virtual {p0, p5}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 318
    invoke-virtual {p0, p7}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 319
    invoke-virtual {p0, p8}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 320
    invoke-virtual {p0, p9}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    move/from16 p1, p10

    .line 321
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    move/from16 p1, p11

    .line 322
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    move-object/from16 p1, p12

    .line 323
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 324
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    move-object/from16 p1, p14

    .line 325
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setInTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    move-object/from16 p1, p17

    .line 326
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    move/from16 p1, p18

    .line 327
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setAllowBalExemptionForSystemProcess(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 328
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result p0

    return p0
.end method

.method public startActivityInTaskFragment(Lcom/android/server/wm/TaskFragment;Landroid/content/Intent;Lcom/android/server/wm/SafeActivityOptions;Landroid/os/IBinder;IILandroid/os/IBinder;)I
    .locals 3

    if-eqz p4, :cond_0

    .line 609
    invoke-static {p4}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 610
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 611
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 612
    const-string v2, "startActivityInTaskFragment"

    invoke-virtual {p0, p2, v2}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p2

    .line 613
    invoke-virtual {p2, p3}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p2

    .line 614
    invoke-virtual {p2, p1}, Lcom/android/server/wm/ActivityStarter;->setInTaskFragment(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 615
    invoke-virtual {p1, p4}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    const/4 p2, -0x1

    .line 616
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 617
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 618
    invoke-virtual {p1, p5}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 619
    invoke-virtual {p1, p6}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 620
    invoke-virtual {p1, p5}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 621
    invoke-virtual {p1, p6}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 622
    iget p0, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result p0

    :goto_1
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 623
    invoke-virtual {p0, p7}, Lcom/android/server/wm/ActivityStarter;->setErrorCallbackToken(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 624
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result p0

    return p0
.end method

.method public final startExistingRecents(Landroid/content/Intent;Landroid/app/ActivityOptions;)Z
    .locals 10

    .line 647
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 646
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRecentsComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 647
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 648
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    const/4 v2, 0x0

    .line 649
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    .line 651
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 652
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v1

    if-nez v1, :cond_5

    .line 653
    :cond_2
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 654
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 655
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v7, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 657
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 660
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v9, 0x1

    invoke-virtual {v1, v9, v7}, Lcom/android/server/wm/RootWindowContainer;->startPowerModeLaunchIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 661
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 662
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object v4

    .line 663
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    .line 664
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 666
    :try_start_0
    iget-object v1, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 668
    iget-object v3, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/Transition;->setRemoteAnimationApp(Landroid/app/IApplicationThread;)V

    .line 669
    invoke-static {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lcom/android/server/wm/Transition;->setTransientLaunch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_2

    .line 671
    :cond_4
    :goto_1
    const-string v0, "startExistingRecents"

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 672
    iput-boolean v9, p1, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    const/4 v0, 0x0

    .line 673
    invoke-virtual {p1, v0, p2, v9}, Lcom/android/server/wm/TaskFragment;->resumeTopActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    .line 674
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    iput-boolean v2, p1, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    .line 678
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return v9

    .line 677
    :goto_2
    iput-boolean v2, p1, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    .line 678
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 679
    throw p2

    :cond_5
    :goto_3
    return v2
.end method

.method public startExistingRecentsIfPossible(Landroid/content/Intent;Landroid/app/ActivityOptions;)Z
    .locals 3

    const-wide/16 v0, 0x20

    .line 634
    :try_start_0
    const-string v2, "startExistingRecents"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 635
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityStartController;->startExistingRecents(Landroid/content/Intent;Landroid/app/ActivityOptions;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 640
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 641
    throw p0
.end method

.method public startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mHomeLaunchingTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Abort starting home on "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " recursively."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 174
    :cond_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x1

    .line 175
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 176
    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/wm/ActivityRecord;->isResolverActivity(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    .line 180
    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 182
    :cond_1
    invoke-virtual {p4}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v2

    .line 183
    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 184
    iget-object v2, p4, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 185
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v2

    .line 184
    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchTaskDisplayArea(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;

    .line 189
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 193
    :try_start_0
    invoke-virtual {p4, v1}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/Task;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 195
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 199
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController;->mHomeLaunchingTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startHomeActivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    .line 201
    invoke-virtual {p1, p3}, Lcom/android/server/wm/ActivityStarter;->setOutActivity([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    const/4 p3, 0x0

    .line 202
    invoke-virtual {p1, p3}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 203
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 204
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    .line 205
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 204
    invoke-virtual {p1, p2, v0, v2}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;II)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 206
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartResult:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    iget-object p1, p0, Lcom/android/server/wm/ActivityStartController;->mHomeLaunchingTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 210
    iget-object p1, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    aget-object p1, p1, p3

    iput-object p1, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    .line 211
    iget-boolean p1, v1, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    if-eqz p1, :cond_2

    .line 215
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleResumeTopActivities()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 208
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mHomeLaunchingTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 209
    throw p1

    :catchall_1
    move-exception p1

    .line 195
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 196
    throw p1
.end method

.method public startSetupActivity()V
    .locals 7

    .line 224
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const-string v1, "device_provisioned"

    const/4 v3, 0x0

    .line 233
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    .line 234
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    .line 237
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UPGRADE_SETUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 239
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v4, 0x100480

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 242
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 243
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 244
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.SETUP_VERSION"

    if-eqz v4, :cond_1

    .line 245
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_2

    .line 247
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_2

    .line 248
    invoke-virtual {v6, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 252
    :cond_2
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v5

    .line 251
    const-string v6, "last_setup_shown"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_3

    .line 253
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/high16 v0, 0x10000000

    .line 254
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 255
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 257
    const-string v0, "startSetupActivity"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 258
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 259
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 260
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    :cond_3
    :goto_1
    return-void
.end method
