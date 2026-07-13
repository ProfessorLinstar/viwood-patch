.class public final Lcom/android/server/am/BroadcastRecord;
.super Landroid/os/Binder;
.source "BroadcastRecord.java"


# static fields
.field public static CORE_DEFER_UNTIL_ACTIVE:Z = false

.field public static final EMPTY_RECEIVERS:Ljava/util/List;

.field static final LIMIT_PRIORITY_SCOPE:J = 0x1621b4c8L


# instance fields
.field public final alarm:Z

.field public anrCount:I

.field public final appOp:I

.field public beyondCount:I

.field public final blockedUntilBeyondCount:[I

.field public final callerApp:Lcom/android/server/am/ProcessRecord;

.field public final callerFeatureId:Ljava/lang/String;

.field public final callerInstantApp:Z

.field public final callerInstrumented:Z

.field public final callerPackage:Ljava/lang/String;

.field public final callerProcState:I

.field public final callingPid:I

.field public final callingUid:I

.field public curApp:Lcom/android/server/am/ProcessRecord;

.field public curComponent:Landroid/content/ComponentName;

.field public curFilter:Lcom/android/server/am/BroadcastFilter;

.field public curFilteredExtras:Landroid/os/Bundle;

.field public curReceiver:Landroid/content/pm/ActivityInfo;

.field public final deferUntilActive:Z

.field public deferredCount:I

.field public final delivery:[I

.field public final deliveryReasons:[Ljava/lang/String;

.field public dispatchClockTime:J

.field public dispatchRealTime:J

.field public dispatchTime:J

.field public enqueueClockTime:J

.field public enqueueRealTime:J

.field public enqueueTime:J

.field public final excludedPackages:[Ljava/lang/String;

.field public final excludedPermissions:[Ljava/lang/String;

.field public final filterExtrasForReceiver:Ljava/util/function/BiFunction;

.field public finishTime:J

.field public final initialSticky:Z

.field public final intent:Landroid/content/Intent;

.field public final interactive:Z

.field public final mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

.field public mBroadcastProcessedRecords:Landroid/util/ArrayMap;

.field public mCachedToShortString:Ljava/lang/String;

.field public mCachedToString:Ljava/lang/String;

.field public mMatchingRecordsCache:Landroid/util/ArrayMap;

.field public manifestCount:I

.field public manifestSkipCount:I

.field public nextReceiver:I

.field public final options:Landroid/app/BroadcastOptions;

.field public final ordered:Z

.field public originalEnqueueClockTime:J

.field public final originalStickyCallingUid:I

.field public final prioritized:Z

.field public final pushMessage:Z

.field public final pushMessageOverQuota:Z

.field public queue:Lcom/android/server/am/BroadcastQueue;

.field public receiverTime:J

.field public final receivers:Ljava/util/List;

.field public final requiredPermissions:[Ljava/lang/String;

.field public final resolvedType:Ljava/lang/String;

.field public resultAbort:Z

.field public resultCode:I

.field public resultData:Ljava/lang/String;

.field public resultExtras:Landroid/os/Bundle;

.field public resultTo:Landroid/content/IIntentReceiver;

.field public resultToApp:Lcom/android/server/am/ProcessRecord;

.field public final scheduledTime:[J

.field public final shareIdentity:Z

.field public state:I

.field public final sticky:Z

.field public final targetComp:Landroid/content/ComponentName;

.field public terminalCount:I

.field public final terminalTime:[J

.field public final timeoutExempt:Z

.field public final urgent:Z

.field public final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 187
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lcom/android/server/am/BroadcastRecord;->EMPTY_RECEIVERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIILandroid/app/BackgroundStartPrivileges;ZLjava/util/function/BiFunction;ILcom/android/server/compat/PlatformCompat;)V
    .locals 4

    move-object/from16 v0, p14

    move-object/from16 v1, p17

    move/from16 v2, p21

    .line 459
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 172
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    if-eqz p2, :cond_7

    .line 463
    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    .line 464
    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 465
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    .line 466
    iput-object p3, p0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 467
    iput-object p4, p0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 468
    iput-object p5, p0, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    .line 469
    iput p6, p0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    .line 470
    iput p7, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move/from16 p1, p29

    .line 471
    iput p1, p0, Lcom/android/server/am/BroadcastRecord;->callerProcState:I

    .line 472
    iput-boolean p8, p0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    .line 473
    invoke-static {p3, p7}, Lcom/android/server/am/BroadcastRecord;->isCallerInstrumented(Lcom/android/server/am/ProcessRecord;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    .line 474
    iput-object p9, p0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    .line 475
    iput-object p10, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    move-object p1, p11

    .line 476
    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    move-object/from16 p1, p12

    .line 477
    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    move/from16 p1, p13

    .line 478
    iput p1, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 479
    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz p15, :cond_0

    move-object/from16 p1, p15

    goto :goto_0

    .line 480
    :cond_0
    sget-object p1, Lcom/android/server/am/BroadcastRecord;->EMPTY_RECEIVERS:Ljava/util/List;

    :goto_0
    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 p3, 0x0

    if-eqz p15, :cond_1

    .line 481
    invoke-interface/range {p15 .. p15}, Ljava/util/List;->size()I

    move-result p4

    goto :goto_1

    :cond_1
    move p4, p3

    :goto_1
    new-array p4, p4, [I

    iput-object p4, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 482
    array-length p5, p4

    new-array p5, p5, [Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    .line 483
    invoke-static {p2, v0}, Lcom/android/server/am/BroadcastRecord;->calculateUrgent(Landroid/content/Intent;Landroid/app/BroadcastOptions;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->urgent:Z

    .line 484
    invoke-static {p7, v0, v1, v2, p2}, Lcom/android/server/am/BroadcastRecord;->calculateDeferUntilActive(ILandroid/app/BroadcastOptions;Landroid/content/IIntentReceiver;ZZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    move-object/from16 p2, p30

    .line 486
    invoke-static {p1, v2, p2}, Lcom/android/server/am/BroadcastRecord;->calculateBlockedUntilBeyondCount(Ljava/util/List;ZLcom/android/server/compat/PlatformCompat;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    .line 488
    array-length p2, p4

    new-array p2, p2, [J

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    .line 489
    array-length p2, p4

    new-array p2, p2, [J

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    move-object/from16 p2, p16

    .line 490
    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultToApp:Lcom/android/server/am/ProcessRecord;

    .line 491
    iput-object v1, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    move/from16 p2, p18

    .line 492
    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 p2, p19

    .line 493
    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 p2, p20

    .line 494
    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 495
    iput-boolean v2, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move/from16 p2, p22

    .line 496
    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    move/from16 p2, p23

    .line 497
    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    .line 498
    invoke-static {p1, v2}, Lcom/android/server/am/BroadcastRecord;->isPrioritized([IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    move/from16 p1, p24

    .line 499
    iput p1, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 500
    iput p3, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 501
    iput p3, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    move-object/from16 p1, p26

    .line 502
    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    move/from16 p1, p27

    .line 503
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    const/4 p1, 0x1

    if-eqz v0, :cond_2

    .line 504
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->isAlarmBroadcast()Z

    move-result p2

    if-eqz p2, :cond_2

    move p2, p1

    goto :goto_2

    :cond_2
    move p2, p3

    :goto_2
    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v0, :cond_3

    .line 505
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->isPushMessagingBroadcast()Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, p1

    goto :goto_3

    :cond_3
    move p2, p3

    :goto_3
    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    if-eqz v0, :cond_4

    .line 506
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->isPushMessagingOverQuotaBroadcast()Z

    move-result p2

    if-eqz p2, :cond_4

    move p2, p1

    goto :goto_4

    :cond_4
    move p2, p3

    :goto_4
    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    if-eqz v0, :cond_5

    .line 507
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->isInteractive()Z

    move-result p2

    if-eqz p2, :cond_5

    move p2, p1

    goto :goto_5

    :cond_5
    move p2, p3

    :goto_5
    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    if-eqz v0, :cond_6

    .line 508
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->isShareIdentityEnabled()Z

    move-result p2

    if-eqz p2, :cond_6

    move p3, p1

    :cond_6
    iput-boolean p3, p0, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    move-object/from16 p1, p28

    .line 509
    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    move/from16 p1, p25

    .line 510
    iput p1, p0, Lcom/android/server/am/BroadcastRecord;->originalStickyCallingUid:I

    return-void

    .line 461
    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Can\'t construct with a null intent"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZILandroid/app/BackgroundStartPrivileges;ZLjava/util/function/BiFunction;ILcom/android/server/compat/PlatformCompat;)V
    .locals 31

    const/16 v25, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    move/from16 v24, p24

    move-object/from16 v26, p25

    move/from16 v27, p26

    move-object/from16 v28, p27

    move/from16 v29, p28

    move-object/from16 v30, p29

    .line 438
    invoke-direct/range {v0 .. v30}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIILandroid/app/BackgroundStartPrivileges;ZLjava/util/function/BiFunction;ILcom/android/server/compat/PlatformCompat;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BroadcastRecord;Landroid/content/Intent;)V
    .locals 2

    .line 517
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 172
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    .line 518
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 519
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    .line 521
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 522
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 523
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    .line 524
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    .line 525
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 526
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->callerProcState:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->callerProcState:I

    .line 527
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    .line 528
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    .line 529
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 530
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    .line 531
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    .line 532
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    .line 533
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 534
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    .line 535
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    .line 536
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    .line 537
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    .line 538
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->appOp:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 539
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 540
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 541
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 542
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    .line 543
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    .line 544
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    .line 545
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    .line 546
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    .line 547
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resultToApp:Lcom/android/server/am/ProcessRecord;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultToApp:Lcom/android/server/am/ProcessRecord;

    .line 548
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 549
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 550
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 551
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 552
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 553
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    .line 554
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 555
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 556
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    .line 557
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 558
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 559
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 560
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    .line 561
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 562
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->state:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 563
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    .line 564
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    .line 565
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    .line 566
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    .line 567
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    .line 568
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    .line 569
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    .line 570
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    .line 571
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    .line 572
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    .line 573
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    .line 574
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->urgent:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->urgent:Z

    .line 575
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    .line 576
    iget p1, p1, Lcom/android/server/am/BroadcastRecord;->originalStickyCallingUid:I

    iput p1, p0, Lcom/android/server/am/BroadcastRecord;->originalStickyCallingUid:I

    return-void
.end method

.method public static areMatchingKeysEqual(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 2

    .line 1237
    invoke-static {p0}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupMatchingNamespaceFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v0

    .line 1238
    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupMatchingNamespaceFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v1

    .line 1239
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1243
    :cond_0
    invoke-static {p0}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupMatchingKeyFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object p0

    .line 1244
    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupMatchingKeyFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object p1

    .line 1245
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static calculateBlockedUntilBeyondCount(Ljava/util/List;ZLcom/android/server/compat/PlatformCompat;)[I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/android/server/compat/PlatformCompat;",
            ")[I"
        }
    .end annotation

    .line 788
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 789
    new-array v1, v0, [I

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :goto_0
    if-ge v2, v0, :cond_9

    .line 794
    aput v2, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0x1621b4c8

    .line 798
    invoke-static {p0, v3, v4, p2}, Lcom/android/server/am/BroadcastRecord;->calculateChangeStateForReceivers(Ljava/util/List;JLcom/android/server/compat/PlatformCompat;)[Z

    move-result-object p1

    const/4 p2, -0x1

    move v5, p2

    move v6, v5

    move v7, v6

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v2, v0, :cond_7

    .line 813
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/BroadcastRecord;->getReceiverPriority(Ljava/lang/Object;)I

    move-result v8

    if-nez v2, :cond_2

    .line 816
    aget-boolean v3, p1, v2

    if-nez v3, :cond_1

    move v7, v2

    :cond_1
    move v3, v8

    goto :goto_3

    :cond_2
    if-eq v8, v3, :cond_4

    if-eq v7, p2, :cond_3

    move v6, v7

    :cond_3
    add-int/lit8 v5, v2, -0x1

    move v7, p2

    move v4, v8

    goto :goto_2

    :cond_4
    move v10, v4

    move v4, v3

    move v3, v10

    .line 833
    :goto_2
    aget-boolean v9, p1, v2

    if-nez v9, :cond_5

    add-int/lit8 v7, v5, 0x1

    .line 838
    aput v7, v1, v2

    move v7, v4

    move v4, v3

    move v3, v7

    move v7, v2

    goto :goto_3

    :cond_5
    if-eq v8, v3, :cond_6

    if-eq v6, p2, :cond_6

    add-int/lit8 v8, v6, 0x1

    .line 844
    aput v8, v1, v2

    :cond_6
    move v10, v4

    move v4, v3

    move v3, v10

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    if-lez v0, :cond_9

    if-eq v5, p2, :cond_8

    if-ne v6, p2, :cond_9

    if-ne v7, p2, :cond_9

    .line 853
    :cond_8
    invoke-static {v1, p2}, Ljava/util/Arrays;->fill([II)V

    :cond_9
    return-object v1
.end method

.method public static calculateChangeStateForReceivers(Ljava/util/List;JLcom/android/server/compat/PlatformCompat;)[Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;J",
            "Lcom/android/server/compat/PlatformCompat;",
            ")[Z"
        }
    .end annotation

    .line 885
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 886
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 887
    new-array v2, v1, [Z

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 889
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/BroadcastRecord;->getReceiverAppInfo(Ljava/lang/Object;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 891
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 893
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_1

    .line 895
    :cond_0
    invoke-virtual {p3, p1, p2, v4}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v5

    .line 897
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v5

    .line 899
    :goto_1
    aput-boolean v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static calculateDeferUntilActive(ILandroid/app/BroadcastOptions;Landroid/content/IIntentReceiver;ZZ)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p3, :cond_1

    if-eqz p2, :cond_1

    return v1

    :cond_1
    if-eqz p1, :cond_4

    .line 1007
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->getDeferralPolicy()I

    move-result p1

    if-eq p1, v1, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    if-eqz p4, :cond_5

    return v0

    .line 1021
    :cond_5
    sget-boolean p1, Lcom/android/server/am/BroadcastRecord;->CORE_DEFER_UNTIL_ACTIVE:Z

    if-eqz p1, :cond_6

    invoke-static {p0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result p0

    if-eqz p0, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public static calculateUrgent(Landroid/content/Intent;Landroid/app/BroadcastOptions;)Z
    .locals 1

    .line 972
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 v0, 0x10000000

    and-int/2addr p0, v0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    .line 976
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->isInteractive()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    .line 979
    :cond_1
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->isAlarmBroadcast()Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static debugLog(Landroid/app/BroadcastOptions;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1337
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->isDebugLogEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static deliveryStateToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 231
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 230
    :pswitch_0
    const-string p0, "DEFERRED"

    return-object p0

    .line 229
    :pswitch_1
    const-string p0, "FAILURE"

    return-object p0

    .line 228
    :pswitch_2
    const-string p0, "SCHEDULED"

    return-object p0

    .line 227
    :pswitch_3
    const-string p0, "TIMEOUT"

    return-object p0

    .line 226
    :pswitch_4
    const-string p0, "SKIPPED"

    return-object p0

    .line 225
    :pswitch_5
    const-string p0, "DELIVERED"

    return-object p0

    .line 224
    :pswitch_6
    const-string p0, "PENDING"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDeliveryGroupMatchingFilter(Lcom/android/server/am/BroadcastRecord;)Landroid/content/IntentFilter;
    .locals 0

    .line 1263
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->getDeliveryGroupMatchingFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public static getDeliveryGroupMatchingKeyFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;
    .locals 0

    .line 1257
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1258
    :cond_0
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->getDeliveryGroupMatchingKeyFragment()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeliveryGroupMatchingNamespaceFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;
    .locals 0

    .line 1251
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1252
    :cond_0
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->getDeliveryGroupMatchingNamespaceFragment()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getReceiverAppInfo(Ljava/lang/Object;)Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 905
    instance-of v0, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_0

    .line 906
    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastFilter;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0

    .line 908
    :cond_0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public static getReceiverClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 937
    instance-of v0, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_0

    .line 938
    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastFilter;->getReceiverClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 940
    :cond_0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static getReceiverPackageName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 929
    instance-of v0, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_0

    .line 930
    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    iget-object p0, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object p0, p0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object p0

    .line 932
    :cond_0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public static getReceiverPriority(Ljava/lang/Object;)I
    .locals 1

    .line 945
    instance-of v0, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_0

    .line 946
    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->getPriority()I

    move-result p0

    return p0

    .line 948
    :cond_0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget p0, p0, Landroid/content/pm/ResolveInfo;->priority:I

    return p0
.end method

.method public static getReceiverProcessName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 921
    instance-of v0, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_0

    .line 922
    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    iget-object p0, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object p0, p0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    return-object p0

    .line 924
    :cond_0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public static getReceiverUid(Ljava/lang/Object;)I
    .locals 1

    .line 913
    instance-of v0, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_0

    .line 914
    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    iget p0, p0, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    return p0

    .line 916
    :cond_0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    return p0
.end method

.method public static intentToString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .line 1325
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1327
    invoke-virtual {p0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static isCallerInstrumented(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 2

    .line 751
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/16 v1, 0x7d0

    if-eq p1, v1, :cond_1

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 758
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return p1

    :cond_1
    return v0
.end method

.method public static isDeliveryStateBeyond(I)Z
    .locals 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static isDeliveryStateTerminal(I)Z
    .locals 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static isMatchingKeyNull(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 1

    .line 1229
    invoke-static {p0}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupMatchingNamespaceFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v0

    .line 1230
    invoke-static {p0}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupMatchingKeyFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isPrioritized([IZ)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 769
    array-length p1, p0

    if-lez p1, :cond_0

    aget p0, p0, v0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static isReceiverEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 955
    :cond_0
    instance-of v1, p0, Landroid/content/pm/ResolveInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    instance-of v1, p1, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_1

    .line 956
    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 957
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 958
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 959
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public static matchesDeliveryGroup(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 2

    .line 1215
    invoke-static {p0}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupMatchingFilter(Lcom/android/server/am/BroadcastRecord;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 1218
    invoke-static {p0}, Lcom/android/server/am/BroadcastRecord;->isMatchingKeyNull(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->isMatchingKeyNull(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 1220
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result p0

    return p0

    :cond_0
    if-eqz v0, :cond_1

    .line 1222
    invoke-virtual {v0}, Landroid/content/IntentFilter;->asPredicate()Ljava/util/function/Predicate;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 1225
    :cond_1
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastRecord;->areMatchingKeysEqual(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public allReceiversPending()Z
    .locals 4

    .line 1274
    iget v0, p0, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public applySingletonPolicy(Lcom/android/server/am/ActivityManagerService;)V
    .locals 7

    .line 1162
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1163
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1164
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1165
    instance-of v3, v2, Landroid/content/pm/ResolveInfo;

    if-eqz v3, :cond_1

    .line 1166
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1169
    :try_start_0
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-virtual {p1, v4, v5, v6, v3}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 1173
    invoke-virtual {v3}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    move v3, v0

    .line 1175
    :goto_1
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1176
    iget v5, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_1

    if-eqz v3, :cond_1

    .line 1177
    invoke-virtual {p1, v5, v4}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1178
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v3, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public calculateTypeForLogging()I
    .locals 2

    .line 1030
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1035
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 1038
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    .line 1041
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x10

    .line 1044
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x20

    .line 1047
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x40

    .line 1050
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x80

    .line 1053
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x100

    .line 1056
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    if-eqz v1, :cond_8

    or-int/lit16 v0, v0, 0x200

    .line 1059
    :cond_8
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    if-eqz v1, :cond_9

    or-int/lit16 v0, v0, 0x400

    .line 1062
    :cond_9
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    if-eqz p0, :cond_a

    or-int/lit16 p0, v0, 0x800

    return p0

    :cond_a
    return v0
.end method

.method public calculateTypesForLogging()[I
    .locals 2

    .line 1069
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 1070
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 1071
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 1073
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1075
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    .line 1076
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1078
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    .line 1079
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1081
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x10

    .line 1082
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1084
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x20

    .line 1085
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1087
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v1, :cond_5

    const/16 v1, 0x40

    .line 1088
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1090
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-eqz v1, :cond_6

    const/16 v1, 0x80

    .line 1091
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1093
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    if-eqz v1, :cond_7

    const/16 v1, 0x100

    .line 1094
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1096
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    if-eqz v1, :cond_8

    const/16 v1, 0x200

    .line 1097
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1099
    :cond_8
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    if-eqz v1, :cond_9

    const/16 v1, 0x400

    .line 1100
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1102
    :cond_9
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    if-eqz p0, :cond_a

    const/16 p0, 0x800

    .line 1103
    invoke-virtual {v0, p0}, Landroid/util/IntArray;->add(I)V

    .line 1105
    :cond_a
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    .line 1118
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne p3, v2, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v1

    .line 1123
    :goto_0
    iget v5, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v5, v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    if-eq v5, p3, :cond_3

    if-nez v4, :cond_3

    if-nez v2, :cond_3

    return v1

    .line 1130
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_2
    if-ltz v0, :cond_a

    .line 1131
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1132
    instance-of v5, v2, Landroid/content/pm/ResolveInfo;

    if-nez v5, :cond_4

    goto :goto_3

    .line 1135
    :cond_4
    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p1, :cond_5

    .line 1137
    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1138
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz p2, :cond_5

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1139
    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_5
    if-nez v4, :cond_6

    .line 1140
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1141
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p3, :cond_9

    :cond_6
    if-nez p4, :cond_7

    return v3

    .line 1146
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1147
    iget v1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-ge v0, v1, :cond_8

    add-int/lit8 v1, v1, -0x1

    .line 1148
    iput v1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    :cond_8
    move v1, v3

    :cond_9
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1152
    :cond_a
    iget p1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iget-object p2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    return v1
.end method

.method public clearMatchingRecordsCache()V
    .locals 1

    const/4 v0, 0x0

    .line 1301
    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    return-void
.end method

.method public containsAllReceivers(Ljava/util/List;)Z
    .locals 3

    .line 1195
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 1196
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/BroadcastRecord;->containsReceiver(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public containsReceiver(Ljava/lang/Object;)Z
    .locals 3

    .line 1186
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 1187
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/am/BroadcastRecord;->isReceiverEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public copyEnqueueTimeFrom(Lcom/android/server/am/BroadcastRecord;)V
    .locals 2

    .line 675
    iget-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->originalEnqueueClockTime:J

    .line 676
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 677
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 678
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    return-void
.end method

.method public debugLog()Z
    .locals 0

    .line 1333
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-static {p0}, Lcom/android/server/am/BroadcastRecord;->debugLog(Landroid/app/BroadcastOptions;)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V
    .locals 12
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 284
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 286
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, " to user "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 287
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 289
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  targetComp: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 293
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  extras: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "caller="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "null"

    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    const-string v2, " pid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 298
    const-string v2, " uid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 299
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    const/4 v3, -0x1

    if-eqz v2, :cond_3

    array-length v2, v2

    if-gtz v2, :cond_4

    :cond_3
    iget v2, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    if-eq v2, v3, :cond_5

    .line 301
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "requiredPermissions="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 302
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    const-string v2, "  appOp="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 305
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_6

    array-length v2, v2

    if-lez v2, :cond_6

    .line 306
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "excludedPermissions="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 307
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    :cond_6
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    if-eqz v2, :cond_7

    array-length v2, v2

    if-lez v2, :cond_7

    .line 310
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "excludedPackages="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    :cond_7
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v2, :cond_8

    .line 314
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "options="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 316
    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "enqueueClockTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    const-string v2, " dispatchClockTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    iget-wide v4, p0, Lcom/android/server/am/BroadcastRecord;->originalEnqueueClockTime:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_9

    .line 321
    const-string v2, " originalEnqueueClockTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/am/BroadcastRecord;->originalEnqueueClockTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    :cond_9
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 325
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "dispatchTime="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    iget-wide v4, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 327
    const-string p3, " ("

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    iget-wide v4, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    iget-wide v8, p0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v4, v8

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 329
    const-string v2, " since enq)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    iget-wide v4, p0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_a

    .line 331
    const-string v2, " finishTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 332
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 333
    iget-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget-wide v4, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 334
    const-string p3, " since disp)"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 336
    :cond_a
    const-string p3, " receiverTime="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 338
    :goto_1
    const-string p3, ""

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    iget p3, p0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    if-eqz p3, :cond_b

    .line 340
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "anrCount="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 342
    :cond_b
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-nez p3, :cond_c

    iget p3, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    if-ne p3, v3, :cond_c

    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    if-eqz p3, :cond_d

    .line 343
    :cond_c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "resultTo="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 344
    const-string p3, " resultCode="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 345
    const-string p3, " resultData="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    :cond_d
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    if-eqz p3, :cond_e

    .line 348
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "resultExtras="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 350
    :cond_e
    iget-boolean p3, p0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    if-nez p3, :cond_f

    iget-boolean p3, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez p3, :cond_f

    iget-boolean p3, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    if-nez p3, :cond_f

    iget-boolean p3, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    if-eqz p3, :cond_10

    .line 351
    :cond_f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "resultAbort="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 352
    const-string p3, " ordered="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 353
    const-string p3, " sticky="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 354
    const-string p3, " initialSticky="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 355
    const-string p3, " originalStickyCallingUid="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/am/BroadcastRecord;->originalStickyCallingUid:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 357
    :cond_10
    iget p3, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-eqz p3, :cond_11

    .line 358
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "nextReceiver="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 360
    :cond_11
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    if-eqz p3, :cond_12

    .line 361
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "curFilter="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 363
    :cond_12
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    if-eqz p3, :cond_13

    .line 364
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "curReceiver="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 366
    :cond_13
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz p3, :cond_15

    .line 367
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "curApp="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 368
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "curComponent="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz p3, :cond_14

    invoke-virtual {p3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_14
    const-string p3, "--"

    :goto_2
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    if-eqz p3, :cond_15

    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p3, :cond_15

    .line 371
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "curSourceDir="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 372
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    :cond_15
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curFilteredExtras:Landroid/os/Bundle;

    if-eqz p3, :cond_16

    .line 376
    const-string p3, " filtered extras: "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curFilteredExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 378
    :cond_16
    iget p3, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    if-eqz p3, :cond_1b

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p3, v0, :cond_19

    const/4 v0, 0x3

    if-eq p3, v0, :cond_18

    const/4 v0, 0x4

    if-eq p3, v0, :cond_17

    .line 380
    const-string p3, " (?)"

    goto :goto_3

    .line 384
    :cond_17
    const-string p3, " (WAITING_SERVICES)"

    goto :goto_3

    .line 383
    :cond_18
    const-string p3, " (CALL_DONE_RECEIVE)"

    goto :goto_3

    .line 382
    :cond_19
    const-string p3, " (CALL_IN_RECEIVE)"

    goto :goto_3

    .line 381
    :cond_1a
    const-string p3, " (APP_RECEIVE)"

    .line 386
    :goto_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "state="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    :cond_1b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "terminalCount="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 389
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p3, :cond_1c

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    goto :goto_4

    :cond_1c
    move p3, v0

    .line 390
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 391
    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    move v3, v0

    :goto_5
    if-ge v3, p3, :cond_22

    .line 393
    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 394
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 395
    iget-object v5, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v5, v5, v3

    invoke-static {v5}, Lcom/android/server/am/BroadcastRecord;->deliveryStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v5, 0x20

    .line 396
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 397
    iget-object v8, p0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v8, v8, v3

    cmp-long v8, v8, v6

    if-eqz v8, :cond_1d

    .line 398
    const-string/jumbo v8, "scheduled "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 399
    iget-object v8, p0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v8, v8, v3

    iget-wide v10, p0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 400
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 402
    :cond_1d
    iget-object v8, p0, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    aget-wide v8, v8, v3

    cmp-long v8, v8, v6

    if-eqz v8, :cond_1e

    .line 403
    const-string/jumbo v8, "terminal "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 404
    iget-object v8, p0, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    aget-wide v8, v8, v3

    iget-object v10, p0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v10, v10, v3

    sub-long/2addr v8, v10

    invoke-static {v8, v9, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 405
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 407
    :cond_1e
    const-string v5, "("

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    aget v5, v5, v3

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ") "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 408
    const-string v5, "#"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    instance-of v5, v4, Lcom/android/server/am/BroadcastFilter;

    if-eqz v5, :cond_1f

    .line 410
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 411
    check-cast v4, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v4, p1, v1}, Lcom/android/server/am/BroadcastFilter;->dumpBrief(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_6

    .line 412
    :cond_1f
    instance-of v5, v4, Landroid/content/pm/ResolveInfo;

    if-eqz v5, :cond_20

    .line 413
    const-string v5, "(manifest)"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v4, v2, v1, v0}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    goto :goto_6

    .line 416
    :cond_20
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 418
    :goto_6
    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-eqz v4, :cond_21

    .line 419
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "reason: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    :cond_22
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1342
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    .line 1343
    iget v2, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1344
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-wide v0, 0x10900000002L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1345
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getBroadcastProcessedRecordsForTest()Landroid/util/ArrayMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/BroadcastProcessedEventRecord;",
            ">;"
        }
    .end annotation

    .line 1389
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public getDeliveryGroupPolicy()I
    .locals 0

    .line 1205
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->getDeliveryGroupPolicy()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDeliveryState(I)I
    .locals 0

    .line 640
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget p0, p0, p1

    return p0
.end method

.method public getHostingRecordTriggerType()Ljava/lang/String;
    .locals 1

    .line 706
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v0, :cond_0

    .line 707
    const-string p0, "alarm"

    return-object p0

    .line 708
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    if-eqz v0, :cond_1

    .line 709
    const-string/jumbo p0, "push_message"

    return-object p0

    .line 710
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    if-eqz p0, :cond_2

    .line 711
    const-string/jumbo p0, "push_message_over_quota"

    return-object p0

    .line 713
    :cond_2
    const-string/jumbo p0, "unknown"

    return-object p0
.end method

.method public getReceiverIntent(Ljava/lang/Object;)Landroid/content/Intent;
    .locals 4

    .line 727
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 730
    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v2

    .line 731
    iget-object v3, p0, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-object v1

    .line 736
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 737
    invoke-virtual {v1, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 741
    :cond_1
    instance-of v0, p1, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    .line 743
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 745
    :cond_2
    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_3
    if-eqz v1, :cond_4

    return-object v1

    .line 747
    :cond_4
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public isAssumedDelivered(I)Z
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/android/server/am/BroadcastFilter;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isBlocked(I)Z
    .locals 1

    .line 648
    iget v0, p0, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    aget p0, p0, p1

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDeferUntilActive()Z
    .locals 0

    .line 698
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    return p0
.end method

.method public isForeground()Z
    .locals 1

    .line 682
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 v0, 0x10000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isMatchingRecord(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 5

    .line 1278
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1280
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 1283
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 1285
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_1
    if-ltz v1, :cond_3

    .line 1286
    iget-object v3, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/BroadcastRecord;->isReceiverEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    move v2, v0

    .line 1292
    :goto_2
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method public isNoAbort()Z
    .locals 1

    .line 690
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 v0, 0x8000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isOffload()Z
    .locals 1

    .line 694
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 v0, -0x80000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isReplacePending()Z
    .locals 1

    .line 686
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isUrgent()Z
    .locals 0

    .line 702
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastRecord;->urgent:Z

    return p0
.end method

.method public logBroadcastProcessedEventRecord()V
    .locals 3

    .line 1379
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1381
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastProcessedEventRecord;

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessedEventRecord;->logToStatsD()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1383
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public matchesDeliveryGroup(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 0

    .line 1210
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastRecord;->matchesDeliveryGroup(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;)Z

    move-result p0

    return p0
.end method

.method public maybeStripForHistory()Lcom/android/server/am/BroadcastRecord;
    .locals 2

    .line 1109
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->canStripForHistory()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1112
    :cond_0
    new-instance v0, Lcom/android/server/am/BroadcastRecord;

    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->maybeStripForHistory()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastRecord;Landroid/content/Intent;)V

    return-object v0
.end method

.method public setDeliveryState(IILjava/lang/String;)Z
    .locals 6

    .line 589
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v0, v0, p1

    .line 590
    invoke-static {v0}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    if-ne p2, v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x6

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 599
    :cond_1
    iget v0, p0, Lcom/android/server/am/BroadcastRecord;->deferredCount:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->deferredCount:I

    :goto_0
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 610
    :pswitch_0
    iget v0, p0, Lcom/android/server/am/BroadcastRecord;->deferredCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->deferredCount:I

    goto :goto_1

    .line 607
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    aput-wide v4, v0, p1

    goto :goto_1

    .line 616
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    aput-wide v4, v0, p1

    .line 617
    iget v0, p0, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    goto :goto_1

    .line 604
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v0, p1

    .line 621
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aput p2, v0, p1

    .line 622
    iget-object p2, p0, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    aput-object p3, p2, p1

    .line 626
    iget p2, p0, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    if-lt p1, p2, :cond_2

    move p1, p2

    .line 628
    :goto_2
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    array-length p3, p3

    if-ge p1, p3, :cond_2

    .line 629
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result p3

    invoke-static {p3}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateBeyond(I)Z

    move-result p3

    if-eqz p3, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 630
    iput p1, p0, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    goto :goto_2

    .line 636
    :cond_2
    iget p0, p0, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    if-eq p0, p2, :cond_3

    return v3

    :cond_3
    :goto_3
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setMatchingRecordsCache(Landroid/util/ArrayMap;)V
    .locals 0

    .line 1297
    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 3

    .line 1315
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToShortString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/server/am/BroadcastRecord;->intentToString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 1317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/u"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToShortString:Ljava/lang/String;

    .line 1320
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToShortString:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1307
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToString:Ljava/lang/String;

    .line 1310
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToString:Ljava/lang/String;

    return-object p0
.end method

.method public updateBroadcastProcessedEventRecord(Ljava/lang/Object;J)V
    .locals 3

    .line 1357
    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->getReceiverProcessName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1358
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    .line 1359
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastProcessedEventRecord;

    if-nez v1, :cond_0

    .line 1361
    new-instance v1, Lcom/android/server/am/BroadcastProcessedEventRecord;

    invoke-direct {v1}, Lcom/android/server/am/BroadcastProcessedEventRecord;-><init>()V

    .line 1362
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastRecord;->calculateTypesForLogging()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/BroadcastProcessedEventRecord;->setBroadcastTypes([I)Lcom/android/server/am/BroadcastProcessedEventRecord;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1363
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/BroadcastProcessedEventRecord;->setIntentAction(Ljava/lang/String;)Lcom/android/server/am/BroadcastProcessedEventRecord;

    move-result-object v1

    .line 1364
    invoke-virtual {v1, v0}, Lcom/android/server/am/BroadcastProcessedEventRecord;->setReceiverProcessName(Ljava/lang/String;)Lcom/android/server/am/BroadcastProcessedEventRecord;

    move-result-object v1

    .line 1365
    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastProcessedEventRecord;->setReceiverUid(I)Lcom/android/server/am/BroadcastProcessedEventRecord;

    move-result-object p1

    iget v1, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 1366
    invoke-virtual {p1, v1}, Lcom/android/server/am/BroadcastProcessedEventRecord;->setSenderUid(I)Lcom/android/server/am/BroadcastProcessedEventRecord;

    move-result-object v1

    .line 1368
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    :cond_0
    invoke-virtual {v1, p2, p3}, Lcom/android/server/am/BroadcastProcessedEventRecord;->addReceiverFinishTime(J)V

    return-void
.end method

.method public wasDelivered(I)Z
    .locals 1

    .line 664
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method

.method public wasDeliveryAttempted(I)Z
    .locals 1

    .line 652
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method
