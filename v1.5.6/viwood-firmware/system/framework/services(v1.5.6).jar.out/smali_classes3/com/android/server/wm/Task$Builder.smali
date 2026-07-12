.class public Lcom/android/server/wm/Task$Builder;
.super Ljava/lang/Object;
.source "Task.java"


# instance fields
.field public mActivityInfo:Landroid/content/pm/ActivityInfo;

.field public mActivityOptions:Landroid/app/ActivityOptions;

.field public mActivityType:I

.field public mAffinity:Ljava/lang/String;

.field public mAffinityIntent:Landroid/content/Intent;

.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mAutoRemoveRecents:Z

.field public mCallingFeatureId:Ljava/lang/String;

.field public mCallingPackage:Ljava/lang/String;

.field public mCallingUid:I

.field public mCreatedByOrganizer:Z

.field public mDeferTaskAppear:Z

.field public mEffectiveUid:I

.field public mHasBeenVisible:Z

.field public mIntent:Landroid/content/Intent;

.field public mLastDescription:Ljava/lang/String;

.field public mLastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field public mLastTimeMoved:J

.field public mLaunchCookie:Landroid/os/IBinder;

.field public mLaunchFlags:I

.field public mMinHeight:I

.field public mMinWidth:I

.field public mNeverRelinquishIdentity:Z

.field public mNextAffiliateTaskId:I

.field public mOnTop:Z

.field public mOrigActivity:Landroid/content/ComponentName;

.field public mParent:Lcom/android/server/wm/WindowContainer;

.field public mPrevAffiliateTaskId:I

.field public mRealActivity:Landroid/content/ComponentName;

.field public mRealActivitySuspended:Z

.field public mRemoveWithTaskOrganizer:Z

.field public mResizeMode:I

.field public mRootAffinity:Ljava/lang/String;

.field public mRootWasReset:Z

.field public mSourceTask:Lcom/android/server/wm/Task;

.field public mSupportsPictureInPicture:Z

.field public mTaskAffiliation:I

.field public mTaskId:I

.field public mUserId:I

.field public mUserSetupComplete:Z

.field public mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field public mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

.field public mWindowingMode:I


# direct methods
.method public static bridge synthetic -$$Nest$msetAffinity(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setAffinity(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetAffinityIntent(Lcom/android/server/wm/Task$Builder;Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setAffinityIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetAutoRemoveRecents(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setAutoRemoveRecents(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetCallingFeatureId(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetCallingPackage(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetCallingUid(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setCallingUid(I)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetLastDescription(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setLastDescription(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetLastTaskDescription(Lcom/android/server/wm/Task$Builder;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setLastTaskDescription(Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetLastTimeMoved(Lcom/android/server/wm/Task$Builder;J)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task$Builder;->setLastTimeMoved(J)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetNeverRelinquishIdentity(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setNeverRelinquishIdentity(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetNextAffiliateTaskId(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setNextAffiliateTaskId(I)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetOrigActivity(Lcom/android/server/wm/Task$Builder;Landroid/content/ComponentName;)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setOrigActivity(Landroid/content/ComponentName;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetPrevAffiliateTaskId(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setPrevAffiliateTaskId(I)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetRealActivitySuspended(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setRealActivitySuspended(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetResizeMode(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setResizeMode(I)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetRootAffinity(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setRootAffinity(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetRootWasReset(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setRootWasReset(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetSupportsPictureInPicture(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setSupportsPictureInPicture(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetTaskAffiliation(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setTaskAffiliation(I)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetUserId(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setUserId(I)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetUserSetupComplete(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setUserSetupComplete(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetVoiceInteractor(Lcom/android/server/wm/Task$Builder;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    .line 6465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 6430
    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mPrevAffiliateTaskId:I

    .line 6431
    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mNextAffiliateTaskId:I

    .line 6439
    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mMinWidth:I

    .line 6440
    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mMinHeight:I

    const/4 v0, 0x0

    .line 6446
    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    .line 6466
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/wm/Task;
    .locals 6

    .line 6751
    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v1, :cond_0

    .line 6752
    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task$Builder;->validateRootTask(Lcom/android/server/wm/TaskDisplayArea;)V

    .line 6755
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_1

    .line 6756
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 6757
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6760
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mUserId:I

    .line 6761
    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mTaskId:I

    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mTaskAffiliation:I

    .line 6762
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/Task$Builder;->mLastTimeMoved:J

    const/4 v0, 0x1

    .line 6763
    iput-boolean v0, p0, Lcom/android/server/wm/Task$Builder;->mNeverRelinquishIdentity:Z

    .line 6764
    iget-object v1, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, p0, Lcom/android/server/wm/Task$Builder;->mCallingUid:I

    .line 6765
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/wm/Task$Builder;->mCallingPackage:Ljava/lang/String;

    .line 6766
    iget v2, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v2, p0, Lcom/android/server/wm/Task$Builder;->mResizeMode:I

    .line 6767
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/Task$Builder;->mSupportsPictureInPicture:Z

    .line 6768
    iget-boolean v1, p0, Lcom/android/server/wm/Task$Builder;->mRemoveWithTaskOrganizer:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/Task$Builder;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_2

    .line 6769
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getRemoveWithTaskOranizer()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/Task$Builder;->mRemoveWithTaskOrganizer:Z

    .line 6772
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task$Builder;->buildInner()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 6773
    iget-boolean v2, p0, Lcom/android/server/wm/Task$Builder;->mHasBeenVisible:Z

    invoke-static {v1, v2}, Lcom/android/server/wm/Task;->-$$Nest$fputmHasBeenVisible(Lcom/android/server/wm/Task;Z)V

    .line 6777
    iget v2, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    if-eqz v2, :cond_3

    .line 6778
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ConfigurationContainer;->setActivityType(I)V

    .line 6781
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v2, :cond_8

    .line 6782
    instance-of v3, v2, Lcom/android/server/wm/Task;

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    if-eqz v3, :cond_6

    .line 6783
    check-cast v2, Lcom/android/server/wm/Task;

    .line 6784
    iget-boolean v3, p0, Lcom/android/server/wm/Task$Builder;->mOnTop:Z

    if-eqz v3, :cond_4

    move v4, v5

    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_5

    move v3, v0

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, v1, v4, v3}, Lcom/android/server/wm/Task;->-$$Nest$maddChild(Lcom/android/server/wm/Task;Lcom/android/server/wm/WindowContainer;IZ)V

    goto :goto_1

    .line 6787
    :cond_6
    iget-boolean v3, p0, Lcom/android/server/wm/Task$Builder;->mOnTop:Z

    if-eqz v3, :cond_7

    move v4, v5

    :cond_7
    invoke-virtual {v2, v1, v4}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 6792
    :cond_8
    :goto_1
    iget p0, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    if-eqz p0, :cond_9

    .line 6793
    invoke-static {v1, p0, v0}, Lcom/android/server/wm/Task;->-$$Nest$msetWindowingModeInner(Lcom/android/server/wm/Task;IZ)V

    :cond_9
    return-object v1
.end method

.method public buildInner()Lcom/android/server/wm/Task;
    .locals 39

    move-object/from16 v0, p0

    .line 6801
    new-instance v1, Lcom/android/server/wm/Task;

    move-object v2, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object v3, v2

    iget v2, v0, Lcom/android/server/wm/Task$Builder;->mTaskId:I

    move-object v4, v3

    iget-object v3, v0, Lcom/android/server/wm/Task$Builder;->mIntent:Landroid/content/Intent;

    move-object v5, v4

    iget-object v4, v0, Lcom/android/server/wm/Task$Builder;->mAffinityIntent:Landroid/content/Intent;

    move-object v6, v5

    iget-object v5, v0, Lcom/android/server/wm/Task$Builder;->mAffinity:Ljava/lang/String;

    move-object v7, v6

    iget-object v6, v0, Lcom/android/server/wm/Task$Builder;->mRootAffinity:Ljava/lang/String;

    move-object v8, v7

    iget-object v7, v0, Lcom/android/server/wm/Task$Builder;->mRealActivity:Landroid/content/ComponentName;

    move-object v9, v8

    iget-object v8, v0, Lcom/android/server/wm/Task$Builder;->mOrigActivity:Landroid/content/ComponentName;

    move-object v10, v9

    iget-boolean v9, v0, Lcom/android/server/wm/Task$Builder;->mRootWasReset:Z

    move-object v11, v10

    iget-boolean v10, v0, Lcom/android/server/wm/Task$Builder;->mAutoRemoveRecents:Z

    move-object v12, v11

    iget v11, v0, Lcom/android/server/wm/Task$Builder;->mUserId:I

    move-object v13, v12

    iget v12, v0, Lcom/android/server/wm/Task$Builder;->mEffectiveUid:I

    move-object v14, v13

    iget-object v13, v0, Lcom/android/server/wm/Task$Builder;->mLastDescription:Ljava/lang/String;

    move-object/from16 v16, v14

    iget-wide v14, v0, Lcom/android/server/wm/Task$Builder;->mLastTimeMoved:J

    move-object/from16 v17, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mNeverRelinquishIdentity:Z

    move/from16 v18, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mLastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v19, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mTaskAffiliation:I

    move/from16 v20, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mPrevAffiliateTaskId:I

    move/from16 v21, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mNextAffiliateTaskId:I

    move/from16 v22, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mCallingUid:I

    move/from16 v23, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mCallingPackage:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mCallingFeatureId:Ljava/lang/String;

    move-object/from16 v25, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mResizeMode:I

    move/from16 v26, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mSupportsPictureInPicture:Z

    move/from16 v27, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mRealActivitySuspended:Z

    move/from16 v28, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mUserSetupComplete:Z

    move/from16 v29, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mMinWidth:I

    move/from16 v30, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mMinHeight:I

    move/from16 v31, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    move-object/from16 v33, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v34, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mCreatedByOrganizer:Z

    move/from16 v35, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mLaunchCookie:Landroid/os/IBinder;

    move-object/from16 v36, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mDeferTaskAppear:Z

    iget-boolean v0, v0, Lcom/android/server/wm/Task$Builder;->mRemoveWithTaskOrganizer:Z

    const/16 v37, 0x0

    move-object/from16 v38, v36

    move/from16 v36, v0

    move-object/from16 v0, v16

    move/from16 v16, v18

    move/from16 v18, v20

    move/from16 v20, v22

    move-object/from16 v22, v24

    move/from16 v24, v26

    move/from16 v26, v28

    move/from16 v28, v30

    move-object/from16 v30, v32

    move-object/from16 v32, v34

    move-object/from16 v34, v38

    move/from16 v38, v35

    move/from16 v35, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v19

    move/from16 v19, v21

    move/from16 v21, v23

    move-object/from16 v23, v25

    move/from16 v25, v27

    move/from16 v27, v29

    move/from16 v29, v31

    move-object/from16 v31, v33

    move/from16 v33, v38

    invoke-direct/range {v0 .. v37}, Lcom/android/server/wm/Task;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;IIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLandroid/os/IBinder;ZZLcom/android/server/wm/Task-IA;)V

    return-object v0
.end method

.method public setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6515
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method public setActivityOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6520
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mActivityOptions:Landroid/app/ActivityOptions;

    return-object p0
.end method

.method public setActivityType(I)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6530
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    return-object p0
.end method

.method public final setAffinity(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6677
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mAffinity:Ljava/lang/String;

    return-object p0
.end method

.method public final setAffinityIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6672
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mAffinityIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public final setAutoRemoveRecents(Z)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6667
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mAutoRemoveRecents:Z

    return-object p0
.end method

.method public final setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6637
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mCallingFeatureId:Ljava/lang/String;

    return-object p0
.end method

.method public final setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6602
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mCallingPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final setCallingUid(I)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6597
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mCallingUid:I

    return-object p0
.end method

.method public setCreatedByOrganizer(Z)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6548
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mCreatedByOrganizer:Z

    return-object p0
.end method

.method public setDeferTaskAppear(Z)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6557
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mDeferTaskAppear:Z

    return-object p0
.end method

.method public setEffectiveUid(I)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6500
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mEffectiveUid:I

    return-object p0
.end method

.method public setHasBeenVisible(Z)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6572
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mHasBeenVisible:Z

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6490
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public final setLastDescription(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6647
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mLastDescription:Ljava/lang/String;

    return-object p0
.end method

.method public final setLastTaskDescription(Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6652
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mLastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object p0
.end method

.method public final setLastTimeMoved(J)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6587
    iput-wide p1, p0, Lcom/android/server/wm/Task$Builder;->mLastTimeMoved:J

    return-object p0
.end method

.method public setLaunchCookie(Landroid/os/IBinder;)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6562
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mLaunchCookie:Landroid/os/IBinder;

    return-object p0
.end method

.method public setLaunchFlags(I)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6480
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mLaunchFlags:I

    return-object p0
.end method

.method public setMinHeight(I)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6510
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mMinHeight:I

    return-object p0
.end method

.method public setMinWidth(I)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6505
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mMinWidth:I

    return-object p0
.end method

.method public final setNeverRelinquishIdentity(Z)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6592
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mNeverRelinquishIdentity:Z

    return-object p0
.end method

.method public final setNextAffiliateTaskId(I)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6632
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mNextAffiliateTaskId:I

    return-object p0
.end method

.method public setOnTop(Z)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6567
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mOnTop:Z

    return-object p0
.end method

.method public final setOrigActivity(Landroid/content/ComponentName;)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6657
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mOrigActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6470
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    return-object p0
.end method

.method public final setPrevAffiliateTaskId(I)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6627
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mPrevAffiliateTaskId:I

    return-object p0
.end method

.method public setRealActivity(Landroid/content/ComponentName;)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6495
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mRealActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final setRealActivitySuspended(Z)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6642
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mRealActivitySuspended:Z

    return-object p0
.end method

.method public setRemoveWithTaskOrganizer(Z)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6577
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mRemoveWithTaskOrganizer:Z

    return-object p0
.end method

.method public final setResizeMode(I)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6607
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mResizeMode:I

    return-object p0
.end method

.method public final setRootAffinity(Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6682
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mRootAffinity:Ljava/lang/String;

    return-object p0
.end method

.method public final setRootWasReset(Z)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6662
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mRootWasReset:Z

    return-object p0
.end method

.method public setSourceTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6475
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mSourceTask:Lcom/android/server/wm/Task;

    return-object p0
.end method

.method public final setSupportsPictureInPicture(Z)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6612
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mSupportsPictureInPicture:Z

    return-object p0
.end method

.method public final setTaskAffiliation(I)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6622
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mTaskAffiliation:I

    return-object p0
.end method

.method public setTaskId(I)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6485
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mTaskId:I

    return-object p0
.end method

.method public final setUserId(I)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6582
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mUserId:I

    return-object p0
.end method

.method public final setUserSetupComplete(Z)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6617
    iput-boolean p1, p0, Lcom/android/server/wm/Task$Builder;->mUserSetupComplete:Z

    return-object p0
.end method

.method public final setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6687
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    return-object p0
.end method

.method public setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6525
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    return-object p0
.end method

.method public setWindowingMode(I)Lcom/android/server/wm/Task$Builder;
    .locals 0

    .line 6539
    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    return-object p0
.end method

.method public final validateRootTask(Lcom/android/server/wm/TaskDisplayArea;)V
    .locals 9

    .line 6692
    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/Task$Builder;->mCreatedByOrganizer:Z

    if-nez v0, :cond_0

    .line 6696
    iput v1, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    .line 6699
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    iget v2, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayContent;->alwaysCreateRootTask(II)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    if-eqz v0, :cond_2

    .line 6704
    invoke-virtual {p1, v2, v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 6706
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " of activityType="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " already on display="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". Can\'t have multiple."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6712
    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    iget-object v3, p0, Lcom/android/server/wm/Task$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    iget-boolean v5, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    invoke-static {v0, v4, v5, v3}, Lcom/android/server/wm/TaskDisplayArea;->isWindowingModeSupported(IZZZ)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6720
    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    iget v4, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    if-ne v4, v1, :cond_3

    goto :goto_1

    .line 6722
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Root task with pinned windowing mode cannot with non-standard activity type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    if-ne v0, v3, :cond_5

    .line 6727
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6729
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->dismissPip()V

    .line 6732
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_6

    .line 6733
    iget v1, p0, Lcom/android/server/wm/Task$Builder;->mLaunchFlags:I

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mLaunchFlags:I

    .line 6737
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/Task$Builder;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    move-object v3, p1

    goto :goto_2

    .line 6738
    :cond_7
    iget v4, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    iget v5, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    iget-object v6, p0, Lcom/android/server/wm/Task$Builder;->mActivityOptions:Landroid/app/ActivityOptions;

    iget-object v7, p0, Lcom/android/server/wm/Task$Builder;->mSourceTask:Lcom/android/server/wm/Task;

    iget v8, p0, Lcom/android/server/wm/Task$Builder;->mLaunchFlags:I

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/Task;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_8

    .line 6743
    iput v2, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    .line 6744
    iput-object v0, p0, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 6747
    :cond_8
    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getNextRootTaskId()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/Task$Builder;->mTaskId:I

    return-void

    .line 6716
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t create root task for unsupported windowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
