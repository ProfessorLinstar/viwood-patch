.class Lcom/android/server/wm/ActivityStarter$Request;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# instance fields
.field public activityInfo:Landroid/content/pm/ActivityInfo;

.field public activityOptions:Lcom/android/server/wm/SafeActivityOptions;

.field public allowBalExemptionForSystemProcess:Z

.field public allowPendingRemoteAnimationRegistryLookup:Z

.field public avoidMoveToFront:Z

.field public caller:Landroid/app/IApplicationThread;

.field public callingFeatureId:Ljava/lang/String;

.field public callingPackage:Ljava/lang/String;

.field public callingPid:I

.field public callingUid:I

.field public componentSpecified:Z

.field public ephemeralIntent:Landroid/content/Intent;

.field public errorCallbackToken:Landroid/os/IBinder;

.field public filterCallingUid:I

.field public freezeScreen:Z

.field public globalConfig:Landroid/content/res/Configuration;

.field public ignoreTargetSecurity:Z

.field public inTask:Lcom/android/server/wm/Task;

.field public inTaskFragment:Lcom/android/server/wm/TaskFragment;

.field public intent:Landroid/content/Intent;

.field public intentCreatorPackage:Ljava/lang/String;

.field public intentCreatorUid:I

.field public intentGrants:Lcom/android/server/uri/NeededUriGrants;

.field public final logMessage:Ljava/lang/StringBuilder;

.field public originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

.field public outActivity:[Lcom/android/server/wm/ActivityRecord;

.field public profilerInfo:Landroid/app/ProfilerInfo;

.field public realCallingPid:I

.field public realCallingUid:I

.field public reason:Ljava/lang/String;

.field public requestCode:I

.field public resolveInfo:Landroid/content/pm/ResolveInfo;

.field public resolvedType:Ljava/lang/String;

.field public resultTo:Landroid/os/IBinder;

.field public resultWho:Ljava/lang/String;

.field public startFlags:I

.field public userId:I

.field public voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field public voiceSession:Landroid/service/voice/IVoiceInteractionSession;

.field public waitResult:Landroid/app/WaitResult;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 431
    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    const/4 v1, -0x1

    .line 432
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 435
    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 436
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 437
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->intentCreatorUid:I

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter$Request;->reset()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 484
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 485
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 486
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 487
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 488
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 489
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 490
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 491
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 492
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 493
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 494
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    const/4 v1, 0x0

    .line 495
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 496
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    const/4 v2, -0x1

    .line 497
    iput v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 498
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 499
    iput v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->intentCreatorUid:I

    .line 500
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->intentCreatorPackage:Ljava/lang/String;

    .line 501
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 502
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 503
    iput v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 504
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 505
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 506
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 507
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 508
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    .line 509
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    .line 510
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->inTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 511
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 512
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 513
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 514
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 515
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 516
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->avoidMoveToFront:Z

    const/4 v2, 0x1

    .line 517
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    const/16 v2, -0x2710

    .line 518
    iput v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 519
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 520
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->allowBalExemptionForSystemProcess:Z

    .line 521
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->freezeScreen:Z

    .line 522
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->errorCallbackToken:Landroid/os/IBinder;

    return-void
.end method

.method public resolveActivity(Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 573
    iget v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    if-nez v0, :cond_0

    .line 574
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 576
    :cond_0
    iget v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    const/4 v9, -0x1

    if-ne v0, v9, :cond_1

    .line 577
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 580
    :cond_1
    iget v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    if-ltz v0, :cond_2

    .line 581
    iput v9, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    goto :goto_0

    .line 582
    :cond_2
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    if-nez v0, :cond_3

    .line 583
    iget v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    iput v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 584
    iget v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iput v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    goto :goto_0

    .line 586
    :cond_3
    iput v9, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iput v9, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 592
    :goto_0
    iget v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 593
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 594
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_5

    .line 595
    iget-object v4, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4

    .line 596
    :try_start_0
    iget-object v5, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 597
    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 599
    iget-object v0, v5, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 600
    iget-object v3, v5, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 602
    :cond_4
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :cond_5
    move v15, v0

    move-object/from16 v16, v3

    goto :goto_3

    :goto_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 606
    :goto_3
    new-instance v0, Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 608
    new-instance v0, Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 609
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "android.intent.action.VIEW"

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 610
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_7

    :cond_6
    const-string v0, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 611
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 612
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 613
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 614
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManagerInternal;->isInstantAppInstallerComponent(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 618
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 621
    :cond_7
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    iget v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iget v6, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget v7, v1, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 623
    invoke-static {v0, v6, v7}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v7

    iget v8, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    const/4 v6, 0x0

    .line 621
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-nez v0, :cond_8

    .line 630
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityStarter$Request;->resolveIntentForLockedOrStoppedProfiles(Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 634
    :cond_8
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget v4, v1, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 637
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtendedFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    .line 639
    iget-object v0, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget v13, v1, Lcom/android/server/wm/ActivityStarter$Request;->intentCreatorUid:I

    iget-object v14, v1, Lcom/android/server/wm/ActivityStarter$Request;->intentCreatorPackage:Ljava/lang/String;

    const/16 v17, 0x0

    const/4 v11, 0x1

    invoke-static/range {v10 .. v17}, Lcom/android/server/wm/ActivityStarter;->logAndThrowExceptionForIntentRedirect(Landroid/content/Context;ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;Ljava/lang/SecurityException;)V

    :cond_9
    move-object/from16 v3, v16

    .line 644
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->isValid(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 645
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getCreatorToken()Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;

    .line 646
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->getCreatorUid()I

    move-result v4

    if-eq v4, v15, :cond_a

    .line 647
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->getCreatorUid()I

    move-result v4

    iput v4, v1, Lcom/android/server/wm/ActivityStarter$Request;->intentCreatorUid:I

    .line 648
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->intentCreatorPackage:Ljava/lang/String;

    .line 653
    :cond_a
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_c

    .line 655
    iget-object v4, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 658
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->requireContentUriPermissionFromCaller:I

    .line 660
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v16

    move v12, v15

    move v15, v0

    .line 656
    invoke-interface/range {v10 .. v16}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;III)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v0

    move v15, v12

    iput-object v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 661
    iget v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->intentCreatorUid:I

    if-eq v0, v9, :cond_c

    .line 663
    :try_start_2
    iget-object v4, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 666
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v6, v6, Landroid/content/pm/ActivityInfo;->requireContentUriPermissionFromCaller:I

    .line 668
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v22

    move/from16 v18, v0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move/from16 v21, v6

    move-object/from16 v19, v7

    .line 664
    invoke-interface/range {v16 .. v22}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;III)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v0

    .line 669
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    if-nez v4, :cond_b

    .line 670
    iput-object v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    return-void

    :catch_0
    move-exception v0

    move-object v12, v0

    goto :goto_4

    .line 672
    :cond_b
    invoke-virtual {v4, v0}, Lcom/android/server/uri/NeededUriGrants;->merge(Lcom/android/server/uri/NeededUriGrants;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 675
    :goto_4
    iget-object v0, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget v8, v1, Lcom/android/server/wm/ActivityStarter$Request;->intentCreatorUid:I

    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter$Request;->intentCreatorPackage:Ljava/lang/String;

    const/4 v6, 0x2

    move-object v11, v3

    move v10, v15

    invoke-static/range {v5 .. v12}, Lcom/android/server/wm/ActivityStarter;->logAndThrowExceptionForIntentRedirect(Landroid/content/Context;ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;Ljava/lang/SecurityException;)V

    :cond_c
    return-void
.end method

.method public resolveIntentForLockedOrStoppedProfiles(Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/content/pm/ResolveInfo;
    .locals 10

    .line 715
    iget v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 716
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 717
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 719
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 721
    :try_start_0
    iget v3, p0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 722
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 723
    invoke-virtual {v0, v3}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 724
    invoke-virtual {v0, v3}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 726
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v0, :cond_1

    .line 729
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    iget v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iget v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 732
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v8

    iget v9, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    const/high16 v7, 0xc0000

    move-object v3, p1

    .line 729
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0

    .line 726
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 727
    throw p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public set(Lcom/android/server/wm/ActivityStarter$Request;)V
    .locals 1

    .line 529
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 530
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 531
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 532
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 533
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 534
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 535
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 536
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 537
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 538
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 539
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 540
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 541
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 542
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 543
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 544
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 545
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 546
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 547
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 548
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 549
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 550
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 551
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    .line 552
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    .line 553
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->inTaskFragment:Lcom/android/server/wm/TaskFragment;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->inTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 554
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 555
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 556
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 557
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 558
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 559
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->avoidMoveToFront:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->avoidMoveToFront:Z

    .line 560
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 562
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 563
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 564
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->allowBalExemptionForSystemProcess:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->allowBalExemptionForSystemProcess:Z

    .line 565
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->freezeScreen:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->freezeScreen:Z

    .line 566
    iget-object p1, p1, Lcom/android/server/wm/ActivityStarter$Request;->errorCallbackToken:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter$Request;->errorCallbackToken:Landroid/os/IBinder;

    return-void
.end method
