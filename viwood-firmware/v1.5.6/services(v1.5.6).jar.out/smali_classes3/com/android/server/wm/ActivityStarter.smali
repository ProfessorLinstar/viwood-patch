.class public Lcom/android/server/wm/ActivityStarter;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# static fields
.field public static final TAG_CONFIGURATION:Ljava/lang/String;

.field public static final TAG_FOCUS:Ljava/lang/String;

.field public static final TAG_RESULTS:Ljava/lang/String;

.field public static final TAG_USER_LEAVING:Ljava/lang/String;

.field public static mConsistencyScenario:Lcom/mediatek/boostfwk/scenario/consistency/ConsistencyScenario;


# instance fields
.field mAddingToTask:Z

.field public mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

.field public mBalCode:I

.field public mCallingUid:I

.field public mCanMoveToFrontCode:I

.field public final mController:Lcom/android/server/wm/ActivityStartController;

.field public mDisplayLockAndOccluded:Z

.field public mDoResume:Z

.field public mFrozeTaskList:Z

.field public mInTask:Lcom/android/server/wm/Task;

.field public mInTaskFragment:Lcom/android/server/wm/TaskFragment;

.field public mIntent:Landroid/content/Intent;

.field public mIntentDelivered:Z

.field public final mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

.field public mIsTaskCleared:Z

.field public mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mLastStartActivityResult:I

.field public mLastStartActivityTimeMs:J

.field public mLastStartReason:Ljava/lang/String;

.field public mLaunchFlags:I

.field public mLaunchMode:I

.field public mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

.field public mLaunchTaskBehind:Z

.field public mMovedToFront:Z

.field mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

.field public mNoAnimation:Z

.field public mNotTop:Lcom/android/server/wm/ActivityRecord;

.field public mOptions:Landroid/app/ActivityOptions;

.field public mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field public mPreferredWindowingMode:I

.field public mPriorAboveTask:Lcom/android/server/wm/Task;

.field public mRealCallingUid:I

.field mRequest:Lcom/android/server/wm/ActivityStarter$Request;

.field public final mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mSourceRecord:Lcom/android/server/wm/ActivityRecord;

.field public mSourceRootTask:Lcom/android/server/wm/Task;

.field mStartActivity:Lcom/android/server/wm/ActivityRecord;

.field public mStartFlags:I

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public mTargetRootTask:Lcom/android/server/wm/Task;

.field public mTargetTask:Lcom/android/server/wm/Task;

.field public mTransientLaunch:Z

.field public mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field public mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method public static synthetic $r8$lambda$H3lQoP9Hv1sZW91Eki200I_lwhE(Lcom/android/server/wm/ActivityStarter;Lcom/android/server/wm/ActivityRecord;)Landroid/content/IntentSender;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->lambda$isAllowedToStart$1(Lcom/android/server/wm/ActivityRecord;)Landroid/content/IntentSender;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$W8bdhI_LzeSQxtRPPEGeLVehcAc(Lcom/android/server/wm/ActivityStarter;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->lambda$startActivityUnchecked$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityTaskManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_RESULTS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityStarter;->TAG_RESULTS:Ljava/lang/String;

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_FOCUS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityStarter;->TAG_FOCUS:Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_CONFIGURATION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityStarter;->TAG_CONFIGURATION:Ljava/lang/String;

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_USER_LEAVING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityStarter;->TAG_USER_LEAVING:Ljava/lang/String;

    .line 314
    new-instance v0, Lcom/mediatek/boostfwk/scenario/consistency/ConsistencyScenario;

    invoke-direct {v0}, Lcom/mediatek/boostfwk/scenario/consistency/ConsistencyScenario;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityStarter;->mConsistencyScenario:Lcom/mediatek/boostfwk/scenario/consistency/ConsistencyScenario;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStartInterceptor;)V
    .locals 1

    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    const/4 v0, 0x0

    .line 287
    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 321
    new-instance v0, Lcom/android/server/wm/ActivityStarter$Request;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityStarter$Request;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 742
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    .line 743
    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 744
    iget-object p1, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 745
    iput-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 746
    iput-object p4, p0, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    const/4 p1, 0x1

    .line 747
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    return-void
.end method

.method public static canEmbedActivity(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I
    .locals 1

    .line 2374
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 2379
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivity(Lcom/android/server/wm/ActivityRecord;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method public static computeResolveFilterUid(III)I
    .locals 1

    .line 0
    const/16 v0, -0x2710

    if-eq p2, v0, :cond_0

    return p2

    :cond_0
    if-ltz p0, :cond_1

    return p0

    :cond_1
    return p1
.end method

.method public static getExternalResult(I)I
    .locals 1

    .line 0
    const/16 v0, 0x66

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getIntentRedirectErrorMessageFromCode(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 3780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3778
    :pswitch_0
    const-string p0, "INTENT_REDIRECT_ABORT_PERMISSION_POLICY_START_ACTIVITY (Creator PermissionPolicyService.checkStartActivity, abort)"

    return-object p0

    .line 3775
    :pswitch_1
    const-string p0, "INTENT_REDIRECT_ABORT_INTENT_FIREWALL_START_ACTIVITY (Creator IntentFirewall.checkStartActivity, abort)"

    return-object p0

    .line 3772
    :pswitch_2
    const-string p0, "INTENT_REDIRECT_ABORT_START_ANY_ACTIVITY_PERMISSION (Creator checkStartAnyActivityPermission, abort)"

    return-object p0

    .line 3769
    :pswitch_3
    const-string p0, "INTENT_REDIRECT_ABORT_START_ANY_ACTIVITY_PERMISSION (Creator checkStartAnyActivityPermission, throw exception)"

    return-object p0

    .line 3766
    :pswitch_4
    const-string p0, "INTENT_REDIRECT_EXCEPTION_GRANT_URI_PERMISSION (Creator URI permission grant throw exception.)"

    return-object p0

    .line 3763
    :pswitch_5
    const-string p0, "INTENT_REDIRECT_EXCEPTION_MISSING_OR_INVALID_TOKEN (Unparceled intent does not have a creator token set, throw exception.)"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getIntentRedirectPreventedLogMessage(ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3753
    invoke-static {p0}, Lcom/android/server/wm/ActivityStarter;->getIntentRedirectErrorMessageFromCode(I)Ljava/lang/String;

    move-result-object p0

    .line 3754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IntentRedirect Hardening] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " intentCreatorUid: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "; intentCreatorPackage: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; callingUid: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "; callingPackage: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; intent: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isDocumentLaunchesIntoExisting(I)Z
    .locals 1

    .line 0
    const/high16 v0, 0x80000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/high16 v0, 0x8000000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static logAndAbortForIntentRedirect(Landroid/content/Context;ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Z
    .locals 0

    .line 3735
    invoke-static/range {p1 .. p6}, Lcom/android/server/wm/ActivityStarter;->getIntentRedirectPreventedLogMessage(ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3737
    const-string p2, "ActivityTaskManager"

    invoke-static {p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x40d

    .line 3738
    invoke-static {p0, p3, p5, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    const-wide/32 p0, 0x1c40476

    .line 3745
    invoke-static {p0, p1, p5}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static logAndThrowExceptionForIntentRedirect(Landroid/content/Context;ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;Ljava/lang/SecurityException;)V
    .locals 0

    .line 3715
    invoke-static/range {p1 .. p6}, Lcom/android/server/wm/ActivityStarter;->getIntentRedirectPreventedLogMessage(ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3717
    const-string p2, "ActivityTaskManager"

    invoke-static {p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x40d

    .line 3718
    invoke-static {p2, p3, p5, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    const-wide/32 p1, 0x1c40476

    .line 3725
    invoke-static {p1, p2, p5}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3727
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0, p7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final addOrReparentStartingActivity(Lcom/android/server/wm/Task;Ljava/lang/String;)V
    .locals 2

    .line 3236
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-eqz v0, :cond_1

    .line 3237
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/ActivityStarter;->canEmbedActivity(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3239
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 3240
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3241
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mRequestedLaunchingTaskFragmentToken:Landroid/os/IBinder;

    goto :goto_0

    .line 3244
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/ActivityStarter;->sendCanNotEmbedActivityError(Lcom/android/server/wm/TaskFragment;I)V

    goto :goto_0

    .line 3247
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-nez v0, :cond_2

    .line 3249
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->findCandidateTaskFragment(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 3251
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3252
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/ActivityStarter;->canEmbedActivity(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v1

    if-nez v1, :cond_3

    move-object p1, v0

    .line 3258
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3259
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-ne v0, p1, :cond_4

    goto :goto_1

    .line 3262
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    return-void

    .line 3260
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const p2, 0x7fffffff

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/TaskFragment;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    return-void
.end method

.method public final adjustLaunchFlagsToDocumentMode(Lcom/android/server/wm/ActivityRecord;ZZI)I
    .locals 3

    const/high16 v0, 0x80000

    and-int v1, p4, v0

    const v2, -0x8080001

    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 3357
    :cond_0
    const-string p0, "ActivityTaskManager"

    const-string p1, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int p0, p4, v2

    return p0

    .line 3362
    :cond_1
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p1, p1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_6

    const/4 p2, 0x2

    if-eq p1, p2, :cond_5

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 3372
    :cond_2
    iget p0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 p1, 0x4

    if-ne p0, p1, :cond_4

    if-eqz v1, :cond_3

    and-int p0, p4, v2

    return p0

    :cond_3
    :goto_0
    return p4

    :cond_4
    and-int p0, p4, v2

    return p0

    :cond_5
    or-int p0, p4, v0

    return p0

    :cond_6
    or-int p0, p4, v0

    return p0
.end method

.method public final avoidMoveToFront()Z
    .locals 0

    .line 1766
    iget p0, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final avoidMoveToFrontPIOnlyCreatorAllows()Z
    .locals 1

    .line 1770
    iget p0, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final complyActivityFlags(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V
    .locals 8

    .line 2539
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 2540
    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    .line 2543
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v0, v5}, Lcom/android/server/wm/Task;->resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2546
    :cond_1
    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v5, 0x10008000

    and-int v6, v4, v5

    if-ne v6, v5, :cond_2

    .line 2554
    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->performClearTaskForReuse(Z)V

    .line 2555
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2556
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2557
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    return-void

    :cond_2
    const/high16 v5, 0x4000000

    and-int v6, v4, v5

    if-nez v6, :cond_f

    .line 2559
    invoke-static {v4}, Lcom/android/server/wm/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v4

    if-nez v4, :cond_f

    const/4 v4, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x3

    .line 2560
    invoke-virtual {p0, v7, v4, v6}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(III)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_1

    .line 2600
    :cond_3
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int v4, v1, v5

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v4, :cond_6

    const/high16 v4, 0x20000

    and-int/2addr v1, v4

    if-eqz v1, :cond_6

    .line 2605
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget p2, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 2606
    invoke-virtual {p1, v0, p2}, Lcom/android/server/wm/Task;->findActivityInHistory(Landroid/content/ComponentName;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2609
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    .line 2610
    invoke-virtual {p2, p1}, Lcom/android/server/wm/Task;->moveActivityToFront(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2613
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2615
    :cond_4
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 2616
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    .line 2617
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    return-void

    .line 2619
    :cond_5
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    return-void

    .line 2621
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2622
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-ne p1, v1, :cond_7

    goto/16 :goto_2

    .line 2625
    :cond_7
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x20000000

    and-int/2addr v1, v3

    if-nez v1, :cond_8

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v2, v1, :cond_a

    :cond_8
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 2627
    invoke-virtual {v1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_a

    .line 2633
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2634
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2636
    :cond_9
    invoke-virtual {p0, v0, p3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    return-void

    .line 2637
    :cond_a
    iget-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, p3}, Lcom/android/server/wm/Task;->isSameIntentFilter(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 2640
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    return-void

    :cond_b
    if-nez p2, :cond_c

    .line 2642
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    :cond_c
    return-void

    :cond_d
    if-nez v3, :cond_e

    .line 2649
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    return-void

    .line 2650
    :cond_e
    iget-boolean p2, p1, Lcom/android/server/wm/Task;->rootWasReset:Z

    if-nez p2, :cond_15

    .line 2656
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    return-void

    .line 2565
    :cond_f
    :goto_1
    new-array p2, v2, [I

    .line 2566
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {p1, v0, v3, p2}, Lcom/android/server/wm/Task;->performClearTop(Lcom/android/server/wm/ActivityRecord;I[I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2569
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v3, :cond_12

    .line 2570
    aget p1, p2, v1

    if-lez p1, :cond_10

    .line 2572
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2574
    :cond_10
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 2577
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2579
    :cond_11
    invoke-virtual {p0, v0, p3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    return-void

    .line 2584
    :cond_12
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-eqz v0, :cond_13

    .line 2587
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p2

    if-eqz p2, :cond_13

    .line 2588
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result p2

    if-eqz p2, :cond_13

    .line 2589
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 2591
    :cond_13
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-nez p2, :cond_15

    .line 2594
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget p3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, p2, p3, v0, v3}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2596
    iget-boolean p3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    xor-int/2addr p3, v2

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_14

    move v1, v2

    :cond_14
    invoke-virtual {p2, p1, p3, v1}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;ZZ)V

    :cond_15
    :goto_2
    return-void
.end method

.method public final computeLaunchParams(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
    .locals 10

    .line 2247
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v1

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    move-object v4, p1

    move-object v5, p2

    move-object v2, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 2249
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {p1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredTaskDisplayArea()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2250
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object p1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_0

    .line 2251
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2252
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget p2, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput p2, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 2253
    iget-object p0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mNeedsSafeRegionBounds:Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    .line 2254
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v4, p0}, Lcom/android/server/wm/ActivityRecord;->setNeedsSafeRegionBounds(Z)V

    :cond_1
    return-void
.end method

.method public final computeLaunchingTaskFlags()V
    .locals 9

    .line 2903
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/high16 v5, 0x10000000

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2904
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2905
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v0, :cond_5

    .line 2914
    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2915
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v6, :cond_0

    goto :goto_0

    .line 2921
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2922
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller with mInTask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has root "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " but target is singleInstance/Task"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2916
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2917
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to launch singleInstance/Task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " into different task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    if-nez v6, :cond_3

    .line 2932
    iget v6, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v7, -0x18082001

    and-int/2addr v6, v7

    .line 2933
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v7, 0x18082000

    and-int/2addr v0, v7

    or-int/2addr v0, v6

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2934
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2935
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2936
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto :goto_1

    .line 2941
    :cond_3
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_4

    .line 2942
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto :goto_1

    .line 2945
    :cond_4
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto :goto_1

    .line 2907
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2908
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching into task without base intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v0, 0x0

    .line 2948
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 2951
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_7

    .line 2952
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2953
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2957
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_a

    .line 2958
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v6, :cond_8

    .line 2961
    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v2, v5

    if-nez v2, :cond_a

    if-nez v0, :cond_a

    .line 2962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v5

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_2

    .line 2966
    :cond_8
    iget v0, v6, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    if-ne v0, v3, :cond_9

    .line 2970
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v5

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_2

    .line 2971
    :cond_9
    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2974
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v5

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2978
    :cond_a
    :goto_2
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_f

    and-int/2addr v0, v5

    if-eqz v0, :cond_b

    move v1, v4

    .line 2980
    :cond_b
    const-string v0, "WindowManager"

    if-eqz v1, :cond_c

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_e

    :cond_c
    if-nez v1, :cond_d

    .line 2983
    const-string v1, "Launch adjacent ignored due to missing NEW_TASK"

    goto :goto_3

    .line 2984
    :cond_d
    const-string v1, "Launch adjacent ignored due to missing source activity"

    .line 2982
    :goto_3
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v1, v1, -0x1001

    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2988
    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2989
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isLaunchAdjacentDisabled()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2990
    const-string v1, "Launch adjacent blocked by source task or ancestor"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2991
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    :cond_f
    return-void
.end method

.method public final computeSuggestedLaunchDisplayArea(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/TaskDisplayArea;
    .locals 10

    .line 2260
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v1

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 2262
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {p1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredTaskDisplayArea()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2263
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    return-object p0

    .line 2264
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    return-object p0
.end method

.method public final computeTargetTask()Lcom/android/server/wm/Task;
    .locals 4

    .line 2217
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x10000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_0

    return-object v2

    .line 2221
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_1

    .line 2222
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    .line 2223
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_3

    .line 2225
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2228
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    .line 2230
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    return-object p0

    .line 2232
    :cond_3
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object p0

    .line 2234
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2236
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    .line 2239
    :cond_4
    const-string v0, "computeTargetTask"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    return-object v2
.end method

.method public final createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 13

    if-eqz p1, :cond_0

    .line 1603
    iget-boolean v0, p1, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v0, :cond_0

    .line 1605
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    move-object/from16 v4, p3

    move/from16 v8, p7

    .line 1606
    invoke-virtual {v0, v4, v8}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v6

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v3, p6

    .line 1607
    invoke-virtual/range {v0 .. v8}, Landroid/content/pm/PackageManagerInternal;->requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;I)V

    .line 1613
    :cond_0
    invoke-static {p2}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    const/4 p0, 0x0

    if-nez p1, :cond_1

    move-object v3, p0

    goto :goto_0

    .line 1614
    :cond_1
    iget-object v0, p1, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    move-object v3, v0

    :goto_0
    if-nez p1, :cond_2

    move-object v9, p0

    goto :goto_1

    .line 1620
    :cond_2
    iget-object v0, p1, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    move-object v9, v0

    :goto_1
    if-nez p1, :cond_3

    move-object v10, p0

    goto :goto_2

    .line 1621
    :cond_3
    iget-object v0, p1, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    move-object v10, v0

    :goto_2
    if-eqz p1, :cond_4

    iget-boolean v0, p1, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    move v11, v0

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :goto_4
    if-nez p1, :cond_5

    :goto_5
    move-object v12, p0

    move-object v1, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    goto :goto_6

    .line 1623
    :cond_5
    iget-object p0, p1, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    goto :goto_5

    .line 1611
    :goto_6
    invoke-static/range {v1 .. v12}, Lcom/android/server/pm/InstantAppResolver;->buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V
    .locals 10

    .line 3221
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    if-eqz v0, :cond_0

    return-void

    .line 3225
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/16 v1, 0x7533

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/ActivityRecord;->logStartActivity(ILcom/android/server/wm/Task;)V

    .line 3226
    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/android/server/wm/ActivityRecord;->mShareIdentity:Z

    iget v8, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3229
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    move-object v2, p1

    move-object v5, p2

    .line 3226
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wm/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;ZII)V

    const/4 p1, 0x1

    .line 3230
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    return-void
.end method

.method public final deliverToCurrentTopIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)I
    .locals 10

    .line 2489
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2490
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 2491
    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v1, v2, :cond_5

    .line 2493
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v2, v1, :cond_5

    .line 2499
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-ne v1, v3, :cond_5

    .line 2505
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    .line 2506
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_2

    .line 2507
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 2509
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2510
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    return v2

    .line 2516
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_4

    .line 2517
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;)V

    .line 2520
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 2523
    :cond_4
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    .line 2527
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {p2, v0, v1, p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;)V

    const/4 p0, 0x3

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    .line 3638
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3639
    const-string v0, "mCurrentUser="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3640
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v0, v0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3641
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3642
    const-string v0, "mLastStartReason="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3643
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3644
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3645
    const-string v0, "mLastStartActivityTimeMs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3646
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3647
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3648
    const-string v0, "mLastStartActivityResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3649
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3650
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    const-string v2, "  "

    if-eqz v0, :cond_0

    .line 3651
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3652
    const-string v0, "mLastStartActivityRecord:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3653
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3, v1}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3655
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    .line 3656
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3657
    const-string v0, "mStartActivity:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3658
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3660
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 3661
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3662
    const-string v0, "mIntent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3663
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3665
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_3

    .line 3666
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3667
    const-string v0, "mOptions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3668
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3670
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3671
    const-string v0, "mLaunchMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3672
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->launchModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3673
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3674
    const-string p2, "mLaunchFlags=0x"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3675
    iget p2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3676
    const-string p2, " mDoResume="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3677
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 3678
    const-string p2, " mAddingToTask="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3679
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 3680
    const-string p2, " mInTaskFragment="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3681
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public final enableConsistencyEngine(Z)V
    .locals 1

    .line 1748
    sget-object p0, Lcom/android/server/wm/ActivityStarter;->mConsistencyScenario:Lcom/mediatek/boostfwk/scenario/consistency/ConsistencyScenario;

    if-nez p0, :cond_0

    .line 1749
    new-instance p0, Lcom/mediatek/boostfwk/scenario/consistency/ConsistencyScenario;

    invoke-direct {p0}, Lcom/mediatek/boostfwk/scenario/consistency/ConsistencyScenario;-><init>()V

    sput-object p0, Lcom/android/server/wm/ActivityStarter;->mConsistencyScenario:Lcom/mediatek/boostfwk/scenario/consistency/ConsistencyScenario;

    :cond_0
    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 1752
    sget-object p1, Lcom/android/server/wm/ActivityStarter;->mConsistencyScenario:Lcom/mediatek/boostfwk/scenario/consistency/ConsistencyScenario;

    invoke-virtual {p1, p0}, Lcom/mediatek/boostfwk/scenario/consistency/ConsistencyScenario;->setBoostStatus(I)Lcom/mediatek/boostfwk/scenario/consistency/ConsistencyScenario;

    goto :goto_0

    .line 1754
    :cond_1
    sget-object p1, Lcom/android/server/wm/ActivityStarter;->mConsistencyScenario:Lcom/mediatek/boostfwk/scenario/consistency/ConsistencyScenario;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mediatek/boostfwk/scenario/consistency/ConsistencyScenario;->setBoostStatus(I)Lcom/mediatek/boostfwk/scenario/consistency/ConsistencyScenario;

    .line 1756
    :goto_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    .line 1757
    sget-object v0, Lcom/android/server/wm/ActivityStarter;->mConsistencyScenario:Lcom/mediatek/boostfwk/scenario/consistency/ConsistencyScenario;

    invoke-virtual {v0, p0}, Lcom/mediatek/boostfwk/scenario/consistency/ConsistencyScenario;->setScenarioAction(I)Lcom/mediatek/boostfwk/scenario/consistency/ConsistencyScenario;

    move-result-object v0

    .line 1758
    invoke-virtual {v0, p1}, Lcom/mediatek/boostfwk/scenario/consistency/ConsistencyScenario;->setHostPID(I)Lcom/mediatek/boostfwk/scenario/consistency/ConsistencyScenario;

    move-result-object p1

    .line 1759
    invoke-virtual {p1, p0}, Lcom/mediatek/boostfwk/scenario/consistency/ConsistencyScenario;->setMinCapability(I)Lcom/mediatek/boostfwk/scenario/consistency/ConsistencyScenario;

    move-result-object p0

    const/16 p1, 0x400

    .line 1760
    invoke-virtual {p0, p1}, Lcom/mediatek/boostfwk/scenario/consistency/ConsistencyScenario;->setMaxCapability(I)Lcom/mediatek/boostfwk/scenario/consistency/ConsistencyScenario;

    move-result-object p0

    const/16 p1, 0x64

    .line 1761
    invoke-virtual {p0, p1}, Lcom/mediatek/boostfwk/scenario/consistency/ConsistencyScenario;->setScenarioTimeout(I)Lcom/mediatek/boostfwk/scenario/consistency/ConsistencyScenario;

    .line 1762
    invoke-static {}, Lcom/mediatek/boostfwk/BoostFwkFactory;->getInstance()Lcom/mediatek/boostfwk/BoostFwkFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mediatek/boostfwk/BoostFwkFactory;->makeBoostFwkManager()Lcom/mediatek/boostfwk/BoostFwkManager;

    move-result-object p0

    sget-object p1, Lcom/android/server/wm/ActivityStarter;->mConsistencyScenario:Lcom/mediatek/boostfwk/scenario/consistency/ConsistencyScenario;

    invoke-virtual {p0, p1}, Lcom/mediatek/boostfwk/BoostFwkManager;->perfHint(Lcom/mediatek/boostfwk/scenario/BasicScenario;)V

    return-void
.end method

.method public execute()I
    .locals 18

    move-object/from16 v1, p0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 817
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->onExecutionStarted()V

    .line 819
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 821
    invoke-virtual {v0}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_0

    .line 826
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->removeExtendedFlags(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v11, v5

    move-object v14, v11

    goto/16 :goto_17

    .line 822
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "File descriptors passed in Intent"

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    :try_start_1
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 832
    iget-object v7, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    if-ne v7, v2, :cond_2

    .line 833
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v12, v5

    goto/16 :goto_16

    .line 834
    :cond_2
    :goto_1
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v9, v9, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v9, v0, v7}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object v11

    if-eqz v0, :cond_3

    .line 836
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v12, v0

    goto :goto_2

    :cond_3
    move-object v12, v5

    .line 837
    :goto_2
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 839
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_5

    .line 840
    iget-boolean v7, v0, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_4

    move v6, v3

    goto :goto_3

    :cond_4
    move v6, v4

    :goto_3
    or-int/2addr v6, v7

    iput-boolean v6, v0, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v14, v5

    :goto_4
    move-object v11, v12

    goto/16 :goto_17

    .line 847
    :cond_5
    :goto_5
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v6, :cond_6

    .line 848
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityStarter$Request;->resolveActivity(Lcom/android/server/wm/ActivityTaskSupervisor;)V

    .line 853
    :cond_6
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_8

    .line 854
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 855
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    if-eqz v0, :cond_8

    if-eqz v6, :cond_8

    .line 856
    const-string v7, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    .line 857
    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    .line 858
    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "android.intent.action.REBOOT"

    .line 859
    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 860
    :cond_7
    invoke-static {v0, v6, v5}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    :cond_8
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 866
    :try_start_4
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 867
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v7, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v7}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v3

    goto :goto_7

    :catchall_3
    move-exception v0

    :goto_6
    move-object v14, v5

    goto/16 :goto_15

    :cond_9
    move v0, v4

    .line 868
    :goto_7
    iget-object v7, v1, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v7}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 870
    iput-boolean v0, v7, Lcom/android/server/wm/Task;->mConfigWillChange:Z

    .line 872
    :cond_a
    sget-object v8, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean v8, v8, v3

    if-eqz v8, :cond_b

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-wide v13, 0x171dc0871351371bL

    const/4 v10, 0x3

    invoke-static {v8, v13, v14, v10, v9}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 875
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 877
    :try_start_5
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->resolveToHeavyWeightSwitcherIfNeeded()I

    move-result v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    if-eqz v10, :cond_f

    .line 884
    :try_start_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 885
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    const-string v7, " result code="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 886
    const-string v0, "ActivityTaskManager"

    iget-object v7, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 933
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 934
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    .line 938
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_c
    move-object v0, v5

    :goto_8
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v11, v3, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 942
    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_d

    .line 943
    iget-object v2, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_d
    move v13, v2

    if-eqz v3, :cond_e

    .line 945
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_e
    move-object v14, v5

    const/4 v9, 0x0

    const/4 v15, 0x0

    move/from16 v16, v10

    move-object v10, v0

    .line 933
    invoke-interface/range {v7 .. v15}, Lcom/android/server/uri/UriGrantsManagerInternal;->notifyActivityLaunchRequestCompleted(IZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 948
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    return v16

    :catchall_4
    move-exception v0

    move-object/from16 v17, v12

    goto/16 :goto_6

    :cond_f
    move/from16 v16, v10

    move-object/from16 v17, v12

    .line 882
    :try_start_7
    iget-object v10, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v1, v10}, Lcom/android/server/wm/ActivityStarter;->executeRequest(Lcom/android/server/wm/ActivityStarter$Request;)I

    move-result v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    .line 884
    :try_start_8
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 885
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    const-string v9, " result code="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 886
    const-string v8, "ActivityTaskManager"

    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v9, v9, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    if-eqz v0, :cond_12

    .line 895
    :try_start_9
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v8, "android.permission.CHANGE_CONFIGURATION"

    const-string v9, "updateConfiguration()"

    invoke-virtual {v0, v8, v9}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_10

    .line 899
    iput-boolean v4, v7, Lcom/android/server/wm/Task;->mConfigWillChange:Z

    goto :goto_a

    :catchall_5
    move-exception v0

    move-object v14, v5

    :goto_9
    move-object/from16 v12, v17

    goto/16 :goto_15

    .line 901
    :cond_10
    :goto_a
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v7, 0x41e4c7b09dde3f7aL    # 2.7890495829452486E9

    invoke-static {v0, v7, v8, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 904
    :cond_11
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v7, v5, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 909
    :cond_12
    :try_start_a
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-eqz v0, :cond_13

    .line 910
    :try_start_b
    invoke-virtual {v0}, Lcom/android/server/wm/SafeActivityOptions;->getOriginalOptions()Landroid/app/ActivityOptions;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-object v15, v0

    goto :goto_b

    :cond_13
    move-object v15, v5

    .line 912
    :goto_b
    :try_start_c
    iget-boolean v0, v1, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    if-nez v0, :cond_15

    :try_start_d
    invoke-static {v12}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 913
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    if-eqz v0, :cond_14

    goto :goto_c

    :cond_14
    move-object v14, v5

    goto :goto_d

    .line 914
    :cond_15
    :goto_c
    :try_start_e
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    move-object v14, v0

    .line 917
    :goto_d
    :try_start_f
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, v14, :cond_16

    move v13, v3

    goto :goto_e

    :cond_16
    move v13, v4

    .line 921
    :goto_e
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v10

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 923
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    if-eqz v0, :cond_17

    .line 924
    iput v12, v0, Landroid/app/WaitResult;->result:I

    .line 925
    iget-object v7, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v0, v7, v11}, Lcom/android/server/wm/ActivityStarter;->waitResultIfNeeded(Landroid/app/WaitResult;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)I

    move-result v12

    goto :goto_f

    :catchall_6
    move-exception v0

    goto :goto_9

    .line 928
    :cond_17
    :goto_f
    invoke-static {v12}, Lcom/android/server/wm/ActivityStarter;->getExternalResult(I)I

    move-result v0

    monitor-exit v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 933
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 934
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v8

    if-eqz v14, :cond_18

    move v9, v3

    goto :goto_10

    :cond_18
    move v9, v4

    .line 938
    :goto_10
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_19

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    move-object v10, v6

    goto :goto_11

    :cond_19
    move-object v10, v5

    :goto_11
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v11, v6, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 942
    iget-object v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_1a

    .line 943
    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_1a
    move v13, v2

    if-eqz v6, :cond_1b

    .line 945
    iget-object v5, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_1b
    if-eqz v14, :cond_1c

    iget-object v2, v14, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_1c

    move v15, v3

    :goto_12
    move-object v14, v5

    move-object/from16 v12, v17

    goto :goto_13

    :cond_1c
    move v15, v4

    goto :goto_12

    .line 933
    :goto_13
    invoke-interface/range {v7 .. v15}, Lcom/android/server/uri/UriGrantsManagerInternal;->notifyActivityLaunchRequestCompleted(IZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 948
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    return v0

    :catchall_7
    move-exception v0

    move-object/from16 v12, v17

    goto/16 :goto_6

    :catchall_8
    move-exception v0

    move-object/from16 v12, v17

    move/from16 v10, v16

    goto :goto_14

    :catchall_9
    move-exception v0

    const/16 v10, -0x60

    .line 884
    :goto_14
    :try_start_10
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 885
    iget-object v7, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    const-string v8, " result code="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 886
    const-string v7, "ActivityTaskManager"

    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v7, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 888
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 929
    :goto_15
    :try_start_11
    monitor-exit v6
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    :catchall_a
    move-exception v0

    goto/16 :goto_4

    :catchall_b
    move-exception v0

    goto :goto_15

    :catchall_c
    move-exception v0

    .line 837
    :goto_16
    :try_start_13
    monitor-exit v6
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 933
    :goto_17
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v7, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 934
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    if-eqz v14, :cond_1d

    move v8, v3

    goto :goto_18

    :cond_1d
    move v8, v4

    .line 938
    :goto_18
    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v9, v9, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v9, :cond_1e

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    goto :goto_19

    :cond_1e
    move-object v9, v5

    :goto_19
    iget-object v10, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v12, v10, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 942
    iget-object v10, v10, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v10, :cond_1f

    .line 943
    iget-object v2, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_1f
    if-eqz v10, :cond_20

    .line 945
    iget-object v5, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_20
    move-object v13, v5

    if-eqz v14, :cond_21

    iget-object v5, v14, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_21

    move v14, v3

    :goto_1a
    move v10, v12

    move v12, v2

    goto :goto_1b

    :cond_21
    move v14, v4

    goto :goto_1a

    .line 933
    :goto_1b
    invoke-interface/range {v6 .. v14}, Lcom/android/server/uri/UriGrantsManagerInternal;->notifyActivityLaunchRequestCompleted(IZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 948
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 949
    throw v0
.end method

.method public final executeRequest(Lcom/android/server/wm/ActivityStarter$Request;)I
    .locals 62

    move-object/from16 v1, p0

    move-object/from16 v15, p1

    .line 1055
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1058
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 1059
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 1061
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 1062
    iget-object v4, v15, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 1063
    iget-object v14, v15, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 1064
    iget-object v6, v15, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 1065
    iget-object v5, v15, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1066
    iget-object v10, v15, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 1067
    iget-object v11, v15, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 1068
    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 1069
    iget-object v3, v15, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 1070
    iget v7, v15, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 1071
    iget v8, v15, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 1072
    iget v9, v15, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 1073
    iget v12, v15, Lcom/android/server/wm/ActivityStarter$Request;->intentCreatorUid:I

    .line 1074
    iget-object v13, v15, Lcom/android/server/wm/ActivityStarter$Request;->intentCreatorPackage:Ljava/lang/String;

    move-object/from16 v16, v3

    .line 1075
    iget-object v3, v15, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    move-object/from16 v17, v3

    .line 1076
    iget-object v3, v15, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    move-object/from16 v30, v10

    .line 1077
    iget v10, v15, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    move/from16 v31, v10

    .line 1078
    iget v10, v15, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    move-object/from16 v32, v14

    .line 1079
    iget v14, v15, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    move-object/from16 v33, v11

    .line 1080
    iget-object v11, v15, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    move/from16 v34, v14

    .line 1081
    iget-object v14, v15, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    move-object/from16 v35, v14

    .line 1082
    iget-object v14, v15, Lcom/android/server/wm/ActivityStarter$Request;->inTaskFragment:Lcom/android/server/wm/TaskFragment;

    move-object/from16 v36, v14

    if-eqz v11, :cond_0

    .line 1087
    invoke-virtual {v11}, Lcom/android/server/wm/SafeActivityOptions;->popAppVerificationBundle()Landroid/os/Bundle;

    move-result-object v18

    move-object/from16 v37, v18

    goto :goto_0

    :cond_0
    const/16 v37, 0x0

    .line 1090
    :goto_0
    const-string v14, "ActivityTaskManager"

    move-object/from16 v38, v13

    if-eqz v0, :cond_2

    .line 1091
    iget-object v13, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v13, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 1093
    invoke-virtual {v13}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v8

    .line 1094
    iget-object v0, v13, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v18, v3

    move/from16 v19, v7

    move/from16 v21, v8

    move v7, v9

    move-object v8, v13

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v18, v3

    .line 1096
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v7

    const-string v7, "Unable to find app for caller "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (pid="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") when starting: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1096
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5e

    move/from16 v21, v8

    move v7, v9

    move-object v8, v13

    goto :goto_1

    :cond_2
    move-object/from16 v18, v3

    move/from16 v19, v7

    move/from16 v21, v8

    move v7, v9

    const/4 v0, 0x0

    const/4 v8, 0x0

    :goto_1
    if-eqz v5, :cond_3

    .line 1102
    iget-object v3, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_3

    .line 1103
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    move v13, v3

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    :goto_2
    if-eqz v5, :cond_4

    .line 1104
    iget v3, v5, Landroid/content/pm/ActivityInfo;->launchMode:I

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    .line 1105
    :goto_3
    const-string v9, " {"

    move-object/from16 v41, v11

    const-string v11, "START u"

    move-object/from16 v27, v8

    const-string v8, ")"

    move/from16 v42, v12

    if-nez v0, :cond_5

    .line 1106
    iget-object v12, v15, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v22, v0

    move/from16 v20, v3

    move-object/from16 v44, v11

    const/4 v3, 0x1

    const/4 v11, 0x0

    .line 1107
    invoke-virtual {v4, v3, v3, v3, v11}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "} with "

    .line 1108
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Landroid/content/pm/ActivityInfo;->launchModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from uid "

    .line 1109
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eq v7, v10, :cond_6

    const/4 v3, -0x1

    if-eq v10, v3, :cond_6

    .line 1112
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    const-string v3, " (realCallingUid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    move/from16 v22, v0

    move-object/from16 v44, v11

    const/4 v11, 0x0

    :cond_6
    :goto_4
    if-eqz v2, :cond_a

    .line 1119
    invoke-static {v2}, Lcom/android/server/wm/ActivityRecord;->isInAnyTask(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1120
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v3, :cond_7

    .line 1121
    sget-object v3, Lcom/android/server/wm/ActivityStarter;->TAG_RESULTS:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Will send result to "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v0, :cond_9

    if-ltz v19, :cond_8

    .line 1124
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_8

    .line 1126
    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    const-string v3, " (rr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v0

    goto :goto_5

    .line 1128
    :cond_8
    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    const-string v3, " (sr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 1130
    :goto_5
    iget-object v3, v15, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v11, v0

    goto :goto_6

    :cond_9
    move-object v11, v0

    const/4 v2, 0x0

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 1134
    :goto_6
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v3, 0x2000000

    and-int/2addr v3, v0

    if-eqz v3, :cond_10

    if-eqz v11, :cond_10

    if-ltz v19, :cond_b

    .line 1139
    invoke-static/range {v41 .. v41}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    const/16 v0, -0x5d

    return v0

    .line 1142
    :cond_b
    iget-object v2, v11, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_c

    .line 1143
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked()Z

    move-result v3

    if-nez v3, :cond_c

    const/4 v2, 0x0

    .line 1146
    :cond_c
    iget-object v3, v11, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 1147
    iget v12, v11, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    move-object/from16 v45, v8

    const/4 v8, 0x0

    .line 1148
    iput-object v8, v11, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_d

    .line 1150
    invoke-virtual {v2, v11, v3, v12}, Lcom/android/server/wm/ActivityRecord;->removeResultsLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    .line 1152
    :cond_d
    iget v8, v11, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    if-ne v8, v7, :cond_e

    .line 1161
    iget-object v8, v11, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    if-eqz v8, :cond_e

    move/from16 v20, v0

    .line 1163
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1164
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    move-object/from16 v16, v2

    move-object/from16 v19, v3

    const-wide/16 v2, 0x0

    move-object/from16 v46, v9

    .line 1167
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 1165
    invoke-virtual {v0, v8, v2, v3, v9}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 1170
    invoke-static {v0, v7}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1172
    iget-object v3, v11, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    move-object/from16 v24, v3

    move/from16 v50, v12

    move-object/from16 v47, v16

    :goto_7
    move-object/from16 v49, v19

    goto :goto_8

    :cond_e
    move/from16 v20, v0

    move-object/from16 v16, v2

    move-object/from16 v19, v3

    move-object/from16 v46, v9

    :cond_f
    move/from16 v50, v12

    move-object/from16 v47, v16

    move-object/from16 v8, v17

    move-object/from16 v24, v18

    goto :goto_7

    :cond_10
    move/from16 v20, v0

    move-object/from16 v45, v8

    move-object/from16 v46, v9

    move-object/from16 v47, v2

    move-object/from16 v49, v16

    move-object/from16 v8, v17

    move-object/from16 v24, v18

    move/from16 v50, v19

    :goto_8
    if-nez v22, :cond_11

    .line 1178
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_11

    const/16 v0, -0x5b

    goto :goto_9

    :cond_11
    move/from16 v0, v22

    :goto_9
    if-nez v0, :cond_13

    if-nez v5, :cond_13

    .line 1188
    invoke-static {}, Lcom/android/server/pm/PackageArchiver;->isArchivingEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1189
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1190
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 1191
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getPackageArchiver()Lcom/android/server/pm/PackageArchiver;

    move-result-object v0

    .line 1192
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    invoke-virtual {v0, v4, v3}, Lcom/android/server/pm/PackageArchiver;->isIntentResolvedToArchivedApp(Landroid/content/Intent;I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1193
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 1194
    invoke-virtual {v0, v4, v8, v3, v10}, Lcom/android/server/pm/PackageArchiver;->requestUnarchiveOnActivityStart(Landroid/content/Intent;Ljava/lang/String;II)I

    move-result v0

    goto :goto_a

    :cond_12
    const/16 v0, -0x5c

    .line 1200
    :cond_13
    :goto_a
    const-string v3, "Failure checking voice capabilities"

    const/16 v9, -0x61

    if-nez v0, :cond_14

    if-eqz v11, :cond_14

    .line 1201
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v12, :cond_14

    const/high16 v12, 0x10000000

    and-int v12, v20, v12

    if-nez v12, :cond_14

    .line 1206
    iget-object v12, v11, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v55, -0x5c

    iget-object v2, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v12, v2, :cond_15

    .line 1209
    :try_start_0
    const-string v2, "android.intent.category.VOICE"

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1210
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 1211
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    .line 1210
    invoke-interface {v2, v12, v4, v6, v13}, Landroid/content/pm/IPackageManager;->activitySupportsIntentAsUser(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity being started in current voice task does not support voice: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    .line 1217
    invoke-static {v14, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    move v0, v9

    goto :goto_c

    :cond_14
    const/16 v55, -0x5c

    :cond_15
    :goto_c
    if-nez v0, :cond_16

    if-eqz v33, :cond_16

    .line 1227
    :try_start_1
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 1228
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    .line 1227
    invoke-interface {v2, v12, v4, v6, v13}, Landroid/content/pm/IPackageManager;->activitySupportsIntentAsUser(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_16

    .line 1229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity being started in new voice task does not support: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_d

    :catch_1
    move-exception v0

    .line 1234
    invoke-static {v14, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    :cond_16
    move v9, v0

    :goto_d
    if-nez v47, :cond_17

    const/16 v29, 0x0

    goto :goto_e

    .line 1240
    :cond_17
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    move-object/from16 v29, v0

    :goto_e
    if-eqz v9, :cond_19

    if-eqz v47, :cond_18

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v48, -0x1

    const/16 v51, 0x0

    const/16 v52, 0x0

    .line 1244
    invoke-virtual/range {v47 .. v54}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1247
    :cond_18
    invoke-static/range {v41 .. v41}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    return v9

    .line 1253
    :cond_19
    :try_start_2
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v2, v15, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_8

    if-eqz v35, :cond_1a

    const/16 v26, 0x1

    :goto_f
    move-object/from16 v16, v0

    move/from16 v25, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v28, v47

    move-object/from16 v19, v49

    move/from16 v20, v50

    goto :goto_10

    :cond_1a
    const/16 v26, 0x0

    goto :goto_f

    :goto_10
    :try_start_3
    invoke-virtual/range {v16 .. v29}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_7

    move-object/from16 v4, v17

    move-object/from16 v8, v18

    move-object/from16 v49, v19

    move/from16 v50, v20

    move/from16 v7, v22

    move-object/from16 v9, v23

    move-object/from16 v47, v24

    move-object/from16 v12, v27

    const/16 v43, 0x1

    xor-int/lit8 v0, v0, 0x1

    .line 1279
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    move v3, v7

    iget-object v7, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v4

    move v4, v3

    move-object v3, v5

    move/from16 v5, v21

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    move v7, v4

    move/from16 v51, v5

    move-object/from16 v48, v6

    move-object v4, v3

    xor-int/lit8 v2, v2, 0x1

    or-int/2addr v0, v2

    .line 1281
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getPermissionPolicyInternal()Lcom/android/server/policy/PermissionPolicyInternal;

    move-result-object v2

    invoke-virtual {v2, v4, v7, v9}, Lcom/android/server/policy/PermissionPolicyInternal;->checkStartActivity(Landroid/content/Intent;ILjava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    or-int v52, v0, v2

    move/from16 v5, v42

    const/4 v3, -0x1

    if-eq v5, v3, :cond_1e

    .line 1286
    :try_start_4
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string v24, ""

    iget-boolean v2, v15, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_5

    if-eqz v35, :cond_1b

    move/from16 v26, v43

    goto :goto_11

    :cond_1b
    const/16 v26, 0x0

    :goto_11
    const/16 v27, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v0

    move/from16 v25, v2

    move-object/from16 v17, v4

    move/from16 v22, v5

    move-object/from16 v18, v8

    move-object/from16 v23, v38

    move-object/from16 v19, v49

    move/from16 v20, v50

    :try_start_5
    invoke-virtual/range {v16 .. v29}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 v6, v23

    if-nez v0, :cond_1c

    .line 1290
    :try_start_6
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_3

    const/4 v3, 0x4

    move-object v8, v9

    :try_start_7
    invoke-static/range {v2 .. v8}, Lcom/android/server/wm/ActivityStarter;->logAndAbortForIntentRedirect(Landroid/content/Context;ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Z

    move-result v52
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_13

    :catch_2
    move-exception v0

    :goto_12
    move-object v9, v0

    goto :goto_15

    :catch_3
    move-exception v0

    move-object v8, v9

    goto :goto_12

    :cond_1c
    move-object v8, v9

    :goto_13
    move-object/from16 v16, v14

    move-object/from16 v14, v18

    move-object/from16 v57, v45

    move-object/from16 v56, v46

    :goto_14
    move-object/from16 v23, v6

    move/from16 v22, v7

    goto :goto_16

    :catch_4
    move-exception v0

    move-object v8, v9

    move-object/from16 v4, v17

    move-object/from16 v49, v19

    move/from16 v50, v20

    move/from16 v5, v22

    move-object/from16 v6, v23

    goto :goto_12

    :catch_5
    move-exception v0

    move-object/from16 v18, v8

    move-object v8, v9

    move-object/from16 v6, v38

    goto :goto_12

    .line 1296
    :goto_15
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    move-object/from16 v16, v14

    move-object/from16 v14, v18

    move-object/from16 v57, v45

    move-object/from16 v56, v46

    invoke-static/range {v2 .. v9}, Lcom/android/server/wm/ActivityStarter;->logAndThrowExceptionForIntentRedirect(Landroid/content/Context;ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;Ljava/lang/SecurityException;)V

    goto :goto_14

    .line 1301
    :goto_16
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    move/from16 v42, v5

    const/4 v5, 0x0

    iget-object v7, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v3, v4

    move/from16 v4, v42

    move-object/from16 v6, v48

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    move v5, v4

    move-object v4, v3

    if-nez v0, :cond_1d

    .line 1303
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x5

    move/from16 v7, v22

    move-object/from16 v6, v23

    invoke-static/range {v2 .. v8}, Lcom/android/server/wm/ActivityStarter;->logAndAbortForIntentRedirect(Landroid/content/Context;ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Z

    move-result v0

    move/from16 v52, v0

    goto :goto_17

    :cond_1d
    move/from16 v7, v22

    move-object/from16 v6, v23

    .line 1308
    :goto_17
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPermissionPolicyInternal()Lcom/android/server/policy/PermissionPolicyInternal;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/policy/PermissionPolicyInternal;->checkStartActivity(Landroid/content/Intent;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1310
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x6

    invoke-static/range {v2 .. v8}, Lcom/android/server/wm/ActivityStarter;->logAndAbortForIntentRedirect(Landroid/content/Context;ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Z

    move-result v52

    goto :goto_18

    :cond_1e
    move-object/from16 v16, v14

    move-object/from16 v57, v45

    move-object/from16 v56, v46

    move-object v14, v8

    move-object v8, v9

    .line 1315
    :cond_1f
    :goto_18
    invoke-virtual {v4}, Landroid/content/Intent;->removeCreatorToken()V

    if-eqz v41, :cond_20

    .line 1319
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    move-object/from16 v2, v41

    invoke-virtual {v2, v4, v14, v12, v0}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    move/from16 v45, v13

    move-object v13, v0

    goto :goto_19

    :cond_20
    move/from16 v45, v13

    const/4 v13, 0x0

    :goto_19
    if-nez v52, :cond_21

    const-wide/16 v2, 0x20

    .line 1324
    :try_start_8
    const-string v0, "shouldAbortBackgroundActivityStart"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1326
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1327
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getBackgroundActivityLaunchController()Lcom/android/server/wm/BackgroundActivityStartController;

    move-result-object v0

    .line 1328
    iget-object v9, v15, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    move/from16 v21, v10

    iget-boolean v10, v15, Lcom/android/server/wm/ActivityStarter$Request;->allowBalExemptionForSystemProcess:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-wide/from16 v17, v2

    move v3, v7

    move-object v5, v8

    move-object/from16 v59, v11

    move-object v8, v12

    move/from16 v6, v21

    move-object/from16 v11, v28

    move/from16 v7, v31

    move-object/from16 v58, v44

    move-object v2, v0

    move-object v12, v4

    move/from16 v4, v51

    .line 1329
    :try_start_9
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/wm/BackgroundActivityStartController;->checkBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/app/ActivityOptions;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    move/from16 v51, v4

    move/from16 v21, v6

    move/from16 v31, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v11

    move-object v4, v12

    move v7, v3

    move-object v8, v5

    .line 1341
    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v57

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1343
    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1b

    :catchall_0
    move-exception v0

    goto :goto_1a

    :catchall_1
    move-exception v0

    move-wide/from16 v17, v2

    :goto_1a
    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->traceEnd(J)V

    .line 1344
    throw v0

    :cond_21
    move/from16 v21, v10

    move-object/from16 v59, v11

    move-object/from16 v27, v12

    move-object/from16 v58, v44

    .line 1347
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->ALLOW_BY_DEFAULT:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 1350
    :goto_1b
    iget-boolean v2, v15, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    if-eqz v2, :cond_22

    .line 1351
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v2

    .line 1352
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStartController;->getPendingRemoteAnimationRegistry()Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    move-result-object v2

    .line 1353
    invoke-virtual {v2, v8, v13}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->overrideOptionsIfNeeded(Ljava/lang/String;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v13

    :cond_22
    move-object v11, v13

    .line 1355
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v2, :cond_23

    .line 1359
    :try_start_a
    invoke-virtual {v4}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v2

    .line 1360
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v5, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v2, v5}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_6

    const/16 v43, 0x1

    xor-int/lit8 v2, v2, 0x1

    or-int v52, v52, v2

    :goto_1c
    move v3, v7

    move-object/from16 v7, v35

    move-object/from16 v2, v59

    goto :goto_1d

    :catch_6
    const/16 v43, 0x1

    .line 1363
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    goto :goto_1c

    :cond_23
    const/16 v43, 0x1

    goto :goto_1c

    .line 1368
    :goto_1d
    invoke-virtual {v1, v7, v2, v11}, Lcom/android/server/wm/ActivityStarter;->computeSuggestedLaunchDisplayArea(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v12

    .line 1369
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    move-object/from16 v18, v5

    move-object/from16 v23, v8

    move/from16 v20, v31

    move/from16 v22, v34

    move/from16 v19, v45

    move-object/from16 v24, v47

    invoke-virtual/range {v18 .. v24}, Lcom/android/server/wm/ActivityStartInterceptor;->setStates(IIIILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v59, v2

    .line 1372
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-boolean v13, v15, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    move v10, v3

    move-object v3, v4

    move-object v5, v14

    move/from16 v17, v21

    move-object/from16 v4, v30

    move/from16 v60, v34

    move-object/from16 v8, v36

    move/from16 v15, v43

    move/from16 v14, v45

    move-object/from16 v6, v48

    move/from16 v9, v51

    move-object/from16 v61, v59

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/wm/ActivityStartInterceptor;->intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;IILandroid/app/ActivityOptions;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v2

    move-object/from16 v18, v5

    move-object/from16 v35, v7

    move v7, v10

    move-object v4, v3

    if-eqz v2, :cond_24

    .line 1377
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v4, v2, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 1378
    iget-object v10, v2, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 1379
    iget-object v5, v2, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 1380
    iget-object v6, v2, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 1381
    iget-object v3, v2, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    .line 1382
    iget v7, v2, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 1383
    iget v8, v2, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 1384
    iget-object v11, v2, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    move-object/from16 v35, v3

    move/from16 v51, v7

    move/from16 v44, v8

    const/16 v32, 0x0

    goto :goto_1e

    :cond_24
    move/from16 v44, v7

    move-object/from16 v5, v18

    move-object/from16 v10, v30

    :goto_1e
    if-eqz v52, :cond_26

    if-eqz v28, :cond_25

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v48, -0x1

    const/16 v51, 0x0

    const/16 v52, 0x0

    move-object/from16 v47, v28

    .line 1393
    invoke-virtual/range {v47 .. v54}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1398
    :cond_25
    invoke-static {v11}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    const/16 v0, 0x66

    return v0

    :cond_26
    move-object/from16 v13, v28

    move-object/from16 v9, v49

    move/from16 v12, v50

    if-eqz v5, :cond_2b

    .line 1406
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    iget-object v3, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v14}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1408
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    new-array v3, v15, [Landroid/content/Intent;

    const/4 v7, 0x0

    aput-object v4, v3, v7

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v50

    const/high16 v51, 0x50000000

    const/16 v52, 0x0

    const/16 v41, 0x2

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v40, v2

    move-object/from16 v49, v3

    move/from16 v45, v14

    move-object/from16 v42, v23

    move-object/from16 v43, v24

    invoke-virtual/range {v40 .. v52}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v2

    move-object/from16 v8, v42

    move-object/from16 v47, v43

    .line 1415
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1417
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v6, 0x800000

    or-int/2addr v6, v4

    const/high16 v10, 0x10080000

    and-int/2addr v10, v6

    if-eqz v10, :cond_27

    const/high16 v6, 0x8800000

    or-int/2addr v6, v4

    .line 1432
    :cond_27
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1434
    const-string v4, "android.intent.extra.PACKAGE_NAME"

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1435
    new-instance v4, Landroid/content/IntentSender;

    invoke-direct {v4, v2}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz v13, :cond_28

    .line 1437
    const-string v2, "android.intent.extra.RESULT_NEEDED"

    invoke-virtual {v3, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1449
    :cond_28
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    move-object/from16 v14, p1

    iget v4, v14, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    move/from16 v5, v17

    .line 1450
    invoke-static {v5, v5, v4}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v23

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v24, v31

    move/from16 v21, v45

    .line 1449
    invoke-virtual/range {v18 .. v24}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    move-object/from16 v23, v8

    move-object/from16 v4, v19

    move/from16 v8, v21

    .line 1453
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    move/from16 v3, v60

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v10, v3, v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 1456
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    if-eqz v6, :cond_2a

    .line 1457
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1458
    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v6

    .line 1459
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, v58

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v15, v56

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v0

    const/4 v1, 0x1

    const/4 v15, 0x0

    invoke-virtual {v4, v1, v1, v1, v15}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "} from uid "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " on display "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_29

    move v0, v15

    goto :goto_1f

    .line 1462
    :cond_29
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v0

    :goto_1f
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v16

    .line 1459
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :cond_2a
    move-object/from16 v17, v0

    move v15, v7

    :goto_20
    move/from16 v21, v5

    move/from16 v44, v21

    move-object/from16 v7, v20

    move/from16 v51, v31

    const/16 v32, 0x0

    move-object v5, v2

    goto :goto_21

    :cond_2b
    move v8, v14

    move/from16 v21, v17

    move-object/from16 v47, v24

    move/from16 v3, v60

    const/4 v15, 0x0

    move-object/from16 v14, p1

    move-object/from16 v17, v0

    move-object v7, v6

    :goto_21
    if-eqz v10, :cond_2c

    .line 1471
    iget-object v2, v10, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    if-eqz v2, :cond_2c

    move/from16 v34, v3

    .line 1472
    iget-object v3, v14, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    move-object/from16 v1, p0

    move-object v0, v11

    move/from16 v39, v15

    move-object/from16 v4, v23

    move/from16 v15, v31

    move/from16 v11, v34

    move-object/from16 v6, v37

    move-object/from16 v5, v47

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/ActivityStarter;->createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    move-object v8, v4

    move-object v3, v5

    .line 1483
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v10, v11, v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    move-object v4, v2

    move-object v7, v6

    move v10, v15

    move/from16 v2, v21

    move-object v11, v7

    goto :goto_22

    :cond_2c
    move-object/from16 v1, p0

    move-object v0, v11

    move/from16 v39, v15

    move-object/from16 v8, v23

    move/from16 v15, v31

    const/4 v6, 0x0

    move v11, v3

    move-object/from16 v3, v47

    move/from16 v34, v11

    move-object/from16 v11, v32

    move/from16 v2, v44

    move/from16 v10, v51

    :goto_22
    if-nez v27, :cond_2d

    if-lez v15, :cond_2d

    .line 1488
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v6, v15}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v6

    if-eqz v6, :cond_2d

    goto :goto_23

    :cond_2d
    move-object/from16 v6, v27

    .line 1493
    :goto_23
    new-instance v15, Lcom/android/server/wm/ActivityRecord$Builder;

    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v15, v0}, Lcom/android/server/wm/ActivityRecord$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 1494
    invoke-virtual {v15, v6}, Lcom/android/server/wm/ActivityRecord$Builder;->setCaller(Lcom/android/server/wm/WindowProcessController;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    .line 1495
    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityRecord$Builder;->setLaunchedFromPid(I)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    .line 1496
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord$Builder;->setLaunchedFromUid(I)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    .line 1497
    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityRecord$Builder;->setLaunchedFromPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    .line 1498
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord$Builder;->setLaunchedFromFeature(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    .line 1499
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    .line 1500
    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityRecord$Builder;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    .line 1501
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityRecord$Builder;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1502
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord$Builder;->setConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    .line 1503
    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityRecord$Builder;->setResultTo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    .line 1504
    invoke-virtual {v0, v9}, Lcom/android/server/wm/ActivityRecord$Builder;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    .line 1505
    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityRecord$Builder;->setRequestCode(I)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    iget-boolean v2, v14, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 1506
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord$Builder;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    if-eqz v33, :cond_2e

    const/4 v13, 0x1

    goto :goto_24

    :cond_2e
    move/from16 v13, v39

    .line 1507
    :goto_24
    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityRecord$Builder;->setRootVoiceInteraction(Z)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    move-object/from16 v7, v16

    .line 1508
    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityRecord$Builder;->setActivityOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    move-object/from16 v2, v61

    .line 1509
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord$Builder;->setSourceRecord(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    .line 1510
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord$Builder;->build()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1512
    iput-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1514
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-nez v3, :cond_2f

    if-eqz v2, :cond_2f

    .line 1517
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iput-object v3, v0, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 1526
    :cond_2f
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v3, :cond_30

    .line 1527
    iget-object v4, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v3, v3, Lcom/android/server/wm/WindowProcessController;->mUid:I

    if-ne v4, v3, :cond_30

    const/4 v13, 0x1

    goto :goto_25

    :cond_30
    move/from16 v13, v39

    .line 1529
    :goto_25
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v3

    if-eqz v3, :cond_31

    if-nez v13, :cond_31

    .line 1530
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->resumeAppSwitches()V

    .line 1535
    :cond_31
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1536
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/android/server/wm/TransitionController;->createAndStartCollecting(I)Lcom/android/server/wm/Transition;

    move-result-object v3

    goto :goto_26

    :cond_32
    const/4 v15, 0x1

    const/4 v3, 0x0

    :goto_26
    if-eqz v3, :cond_33

    move v13, v15

    goto :goto_27

    :cond_33
    move/from16 v13, v39

    :goto_27
    if-eqz v13, :cond_34

    goto :goto_28

    .line 1542
    :cond_34
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v3

    .line 1544
    :goto_28
    iget-object v5, v14, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object v15, v14

    move-object/from16 v10, v17

    move/from16 v12, v21

    move-object/from16 v4, v33

    move/from16 v6, v34

    move-object/from16 v8, v35

    move-object/from16 v9, v36

    move v14, v13

    move-object v13, v3

    move-object v3, v2

    move-object v2, v0

    invoke-virtual/range {v1 .. v14}, Lcom/android/server/wm/ActivityStarter;->startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/uri/NeededUriGrants;ILcom/android/server/wm/Transition;Z)I

    move-result v0

    iput v0, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    .line 1549
    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_35

    .line 1550
    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    aput-object v1, v2, v39

    :cond_35
    return v0

    :catch_7
    move-exception v0

    move v8, v13

    move-object/from16 v9, v19

    move/from16 v12, v20

    move/from16 v7, v22

    move-object/from16 v13, v28

    move-object/from16 v2, v41

    goto :goto_29

    :catch_8
    move-exception v0

    move v8, v13

    move-object/from16 v2, v41

    move-object/from16 v13, v47

    move-object/from16 v9, v49

    move/from16 v12, v50

    .line 1260
    :goto_29
    iget-object v3, v15, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    if-eqz v3, :cond_39

    .line 1261
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_36

    .line 1262
    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_39

    .line 1263
    :cond_36
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 1264
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2a

    .line 1265
    :cond_37
    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 1266
    :goto_2a
    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    .line 1267
    invoke-virtual {v1, v3, v7, v8}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_39

    if-eqz v13, :cond_38

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v48, -0x1

    const/16 v51, 0x0

    const/16 v52, 0x0

    move-object/from16 v49, v9

    move/from16 v50, v12

    move-object/from16 v47, v13

    .line 1269
    invoke-virtual/range {v47 .. v54}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1273
    :cond_38
    invoke-static {v2}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    return v55

    .line 1277
    :cond_39
    throw v0

    .line 1056
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need to specify a reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final findCandidateTaskFragment(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskFragment;
    .locals 4

    .line 3273
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 3274
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_9

    .line 3275
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 3276
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3278
    iget-boolean v2, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_1

    goto :goto_3

    :cond_1
    return-object v0

    .line 3284
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 3285
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->isRemovalRequested()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    .line 3289
    :cond_3
    new-instance v3, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_3

    .line 3293
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->isIsolatedNav()Z

    move-result v3

    if-eqz v3, :cond_5

    return-object v0

    :cond_5
    if-eqz p0, :cond_6

    if-ne p0, v2, :cond_6

    goto :goto_2

    .line 3301
    :cond_6
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->isPinned()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    return-object v2

    :cond_8
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_9
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    .line 3422
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public final getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;
    .locals 9

    if-eqz p4, :cond_0

    .line 3397
    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3398
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    :goto_2
    move-object v5, v0

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 3399
    :goto_3
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    move-object v2, p1

    move v8, p2

    move-object v4, p3

    move-object v3, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/RootWindowContainer;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;I)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public final handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 8

    .line 1563
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1567
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1568
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 1569
    iget v3, p1, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1571
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1576
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOptions()Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-static {p0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final handleStartResult(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;IZLandroid/window/RemoteTransition;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/Task;
    .locals 8

    .line 1782
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    const/4 v2, 0x0

    .line 1783
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 1784
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1786
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 1788
    :goto_0
    invoke-static {p3}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_14

    if-nez v0, :cond_1

    goto/16 :goto_6

    .line 1812
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1813
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->computeInitialCallerInfo()V

    :cond_2
    if-eqz p2, :cond_3

    .line 1818
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getTaskAlwaysOnTop()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1819
    invoke-virtual {v0, v5}, Lcom/android/server/wm/Task;->setAlwaysOnTop(Z)V

    :cond_3
    if-eqz p4, :cond_4

    .line 1822
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    if-nez v3, :cond_4

    .line 1823
    invoke-virtual {p1, v5}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(Z)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1824
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Abort "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " of invisible launch "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    invoke-virtual {p6}, Lcom/android/server/wm/Transition;->abort()V

    return-object v0

    .line 1832
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1833
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->shouldUpdateConfigForDisplayChanged()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1834
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v7, v3, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6, v3, v7, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Z)V

    .line 1838
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v3

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1839
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v3

    iget v6, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v3, v6}, Lcom/android/server/pm/UserManagerInternal;->isVisibleBackgroundFullUser(I)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v6, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 1840
    invoke-virtual {v3, v6}, Lcom/android/server/wm/RootWindowContainer;->hasVisibleWindowAboveButDoesNotOwnNotificationShade(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1846
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1849
    invoke-interface {v3}, Lcom/android/server/statusbar/StatusBarManagerInternal;->collapsePanels()V

    .line 1854
    :cond_6
    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    if-eqz p3, :cond_8

    const/4 v6, 0x2

    if-ne p3, v6, :cond_7

    goto :goto_1

    :cond_7
    move v6, v2

    goto :goto_2

    :cond_8
    :goto_1
    move v6, v5

    :goto_2
    if-eqz p2, :cond_9

    .line 1856
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getTransientLaunch()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1860
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    if-eqz p2, :cond_9

    iget-boolean p2, p0, Lcom/android/server/wm/ActivityStarter;->mDisplayLockAndOccluded:Z

    if-eqz p2, :cond_9

    move p2, v5

    goto :goto_3

    :cond_9
    move p2, v2

    :goto_3
    if-eqz v6, :cond_a

    .line 1865
    invoke-virtual {v3, p1}, Lcom/android/server/wm/TransitionController;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_4

    :cond_a
    const/4 v7, 0x3

    if-ne p3, v7, :cond_b

    if-eqz p4, :cond_b

    .line 1866
    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v7, :cond_b

    .line 1870
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->hasOrderChanges()Z

    move-result v7

    if-nez v7, :cond_b

    .line 1871
    invoke-virtual {v3, v0}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    move-result v7

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1872
    invoke-virtual {p6, v7}, Lcom/android/server/wm/Transition;->hasChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result v7

    if-nez v7, :cond_b

    if-nez p2, :cond_b

    .line 1875
    invoke-virtual {p6}, Lcom/android/server/wm/Transition;->abort()V

    move-object p6, v4

    :cond_b
    :goto_4
    if-eqz p2, :cond_c

    if-eqz p6, :cond_c

    .line 1880
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p6, p2}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1881
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    invoke-virtual {p6, p2}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1884
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    invoke-virtual {p6, p2, v7}, Lcom/android/server/wm/Transition;->setTransientLaunch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    .line 1885
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    .line 1887
    iget-object v7, p2, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v7}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    .line 1889
    invoke-virtual {p6, p2, v5}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    :cond_c
    if-nez v1, :cond_d

    if-eqz p6, :cond_d

    .line 1893
    invoke-virtual {p6, v2}, Lcom/android/server/wm/Transition;->setCanPipOnFinish(Z)V

    .line 1895
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result p2

    if-eqz p2, :cond_e

    if-eqz p6, :cond_e

    const/high16 p2, 0x10000

    .line 1896
    invoke-virtual {p6, p2}, Lcom/android/server/wm/Transition;->addFlag(I)V

    :cond_e
    if-eqz p4, :cond_10

    if-eqz p6, :cond_10

    .line 1900
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    if-nez p0, :cond_f

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    .line 1899
    :cond_f
    invoke-virtual {v3, p6, p0, p5, v4}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    return-object v0

    :cond_10
    if-nez p3, :cond_11

    .line 1902
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    sget-object p3, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p2, p3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p2

    if-eqz p2, :cond_11

    goto :goto_5

    :cond_11
    if-eqz v6, :cond_13

    .line 1904
    iget p2, p0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    const/16 p3, 0x7f

    if-ne p2, p3, :cond_12

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz p0, :cond_13

    :cond_12
    if-eqz p6, :cond_13

    .line 1907
    invoke-virtual {p6, p1, v2}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    :cond_13
    :goto_5
    return-object v0

    .line 1792
    :cond_14
    :goto_6
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 1793
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const-string p2, "startActivity"

    invoke-virtual {p1, p2, v5}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    goto :goto_7

    .line 1794
    :cond_15
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 1795
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    :cond_16
    :goto_7
    if-eqz v0, :cond_17

    .line 1799
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 1800
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->hasActivity()Z

    move-result p1

    if-nez p1, :cond_17

    .line 1801
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p1

    if-nez p1, :cond_17

    iget-boolean p1, v0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez p1, :cond_17

    .line 1803
    const-string p1, "handleStartResult"

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    :cond_17
    if-eqz p4, :cond_18

    .line 1805
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1806
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 1807
    invoke-virtual {p6}, Lcom/android/server/wm/Transition;->abort()V

    :cond_18
    return-object v4
.end method

.method public isAllowedToStart(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/Task;)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    .line 2269
    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2270
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    const/16 v0, -0x5c

    return v0

    .line 2277
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v1

    const/4 v3, 0x1

    const-string v4, "ActivityTaskManager"

    if-eqz v1, :cond_1

    .line 2278
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v1, v6, v7, v3}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot launch home on display area "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x60

    return v0

    :cond_1
    const/4 v11, 0x0

    if-nez p2, :cond_3

    .line 2288
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 2289
    invoke-virtual {v5, v1}, Lcom/android/server/wm/Task;->isUidPresent(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    iget v6, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v1, v6, :cond_2

    .line 2290
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v11

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v3

    .line 2292
    :goto_1
    iget v6, v0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    const/16 v7, 0x7f

    const/16 v12, 0x66

    if-ne v6, v7, :cond_4

    if-eqz v1, :cond_4

    .line 2293
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityStarter;->handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Abort background activity starts from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    .line 2301
    :cond_4
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v6, 0x10008000

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_5

    move v1, v3

    goto :goto_2

    :cond_5
    move v1, v11

    :goto_2
    const/16 v6, 0x65

    .line 2304
    const-string v7, "Attempted Lock Task Mode violation r="

    if-nez p2, :cond_6

    .line 2305
    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v8

    invoke-virtual {v8, v5, v1}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 2311
    :cond_6
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/LockTaskController;->isNewTaskLockTaskModeViolation(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 2321
    :cond_7
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v1, :cond_b

    .line 2322
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2323
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v1

    .line 2322
    invoke-virtual {v6, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_b

    if-eqz v5, :cond_8

    .line 2326
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v6

    :goto_3
    move/from16 v16, v6

    goto :goto_4

    :cond_8
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v6

    goto :goto_3

    .line 2328
    :goto_4
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v6

    move/from16 v17, v6

    goto :goto_5

    :cond_9
    move/from16 v17, v11

    .line 2329
    :goto_5
    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_a

    move/from16 v19, v3

    goto :goto_6

    :cond_a
    move/from16 v19, v11

    .line 2332
    :goto_6
    new-instance v3, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v2}, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ActivityStarter;Lcom/android/server/wm/ActivityRecord;)V

    .line 2343
    iget-object v13, v1, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    iget-object v14, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    move/from16 v18, p2

    move-object/from16 v20, v3

    .line 2344
    invoke-virtual/range {v13 .. v20}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->canActivityBeLaunched(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;IIZZLjava/util/function/Supplier;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abort to launch "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " on display area "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    .line 2353
    :cond_b
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getBackgroundActivityLaunchController()Lcom/android/server/wm/BackgroundActivityStartController;

    move-result-object v1

    move-object v3, v1

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2354
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v4

    iget v6, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget v7, v0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    iget v8, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iget v9, v0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    move-object v0, v3

    move/from16 v3, p2

    .line 2353
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/BackgroundActivityStartController;->checkActivityAllowedToStart(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLcom/android/server/wm/Task;IIIILcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    if-nez v0, :cond_c

    return v12

    :cond_c
    return v11
.end method

.method public final isLaunchModeOneOf(II)Z
    .locals 0

    .line 3404
    iget p0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq p1, p0, :cond_1

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isLaunchModeOneOf(III)Z
    .locals 0

    .line 3408
    iget p0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq p1, p0, :cond_1

    if-eq p2, p0, :cond_1

    if-ne p3, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$isAllowedToStart$1(Lcom/android/server/wm/ActivityRecord;)Landroid/content/IntentSender;
    .locals 13

    .line 2333
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iget v5, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const/4 v1, 0x1

    new-array v9, v1, [Landroid/content/Intent;

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    aput-object v6, v9, v1

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v10

    .line 2339
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :goto_0
    move-object v12, p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    :goto_1
    const/4 v1, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v11, 0x50000000

    .line 2333
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object p0

    .line 2340
    new-instance p1, Landroid/content/IntentSender;

    invoke-direct {p1, p0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object p1
.end method

.method public final synthetic lambda$startActivityUnchecked$0()V
    .locals 1

    const/4 v0, 0x1

    .line 1724
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStarter;->enableConsistencyEngine(Z)V

    return-void
.end method

.method public final logPIOnlyCreatorAllowsBAL()V
    .locals 3

    .line 2189
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFrontPIOnlyCreatorAllows()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2190
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 2191
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2195
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Without Android 15 BAL hardening this activity would be moved to the foreground. The activity is started by a PendingIntent. However, only the creator of the PendingIntent allows BAL while the sender does not allow BAL. realCallingPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; callingPackage: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; mTargetRootTask:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; mIntent: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; mTargetRootTask.getTopNonFinishingActivity: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2203
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; mTargetRootTask.getRootActivity: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2204
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2195
    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onExecutionComplete()V
    .locals 1

    .line 1590
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityStartController;->onExecutionComplete(Lcom/android/server/wm/ActivityStarter;)V

    return-void
.end method

.method public final onExecutionStarted()V
    .locals 0

    .line 1594
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStartController;->onExecutionStarted()V

    return-void
.end method

.method public postStartActivityProcessing(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;)V
    .locals 5

    .line 1628
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1629
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    if-eqz v0, :cond_0

    .line 1633
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->resetFreezeTaskListReorderingOnTimeout()V

    .line 1636
    :cond_0
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultFatalError(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 1645
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->reportWaitingActivityLaunchedIfNeeded(Lcom/android/server/wm/ActivityRecord;I)V

    .line 1647
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1648
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_0

    .line 1649
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    :goto_0
    if-eqz p3, :cond_8

    if-eqz v0, :cond_8

    .line 1650
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_2

    :cond_3
    const/4 p3, 0x2

    if-eq p2, p3, :cond_4

    const/4 p3, 0x3

    if-ne p2, p3, :cond_7

    .line 1658
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_5

    const/4 v3, 0x0

    .line 1660
    invoke-virtual {p3, v3}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p3

    if-eqz p3, :cond_5

    move p3, v2

    goto :goto_1

    :cond_5
    move p3, v1

    .line 1661
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1662
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    .line 1663
    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    .line 1664
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    .line 1663
    invoke-virtual {v2, v3, p3, v4, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V

    .line 1667
    :cond_7
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1668
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/ActivityStartInterceptor;->onActivityLaunched(Landroid/app/TaskInfo;Lcom/android/server/wm/ActivityRecord;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public final recordTransientLaunchIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 2208
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2209
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2210
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->isTransientCollect(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2211
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/TransitionController;->setTransientLaunch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public recycleTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)I
    .locals 11

    .line 2393
    iget v3, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v5, v4, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const/4 v6, 0x1

    const/4 v8, 0x0

    if-eq v3, v5, :cond_0

    .line 2394
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2395
    iput-boolean v6, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    return v8

    :cond_0
    if-eqz p3, :cond_3

    .line 2400
    iget-object v3, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v3, :cond_1

    .line 2404
    invoke-virtual {p1, v4}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_0

    .line 2406
    :cond_1
    iget-object v3, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2407
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/16 v4, 0x4000

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 2409
    iget-object v3, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 2411
    :cond_2
    iget-object v3, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->removeFlags(I)V

    .line 2416
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v8, p2}, Lcom/android/server/wm/RootWindowContainer;->startPowerModeLaunchIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 2419
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityStarter;->setTargetRootTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 2423
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_5

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v4, :cond_4

    .line 2425
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isNoDisplay()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2426
    :cond_4
    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2429
    :cond_5
    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/2addr v3, v6

    const-string v4, "intentActivityFound"

    if-eqz v3, :cond_8

    .line 2433
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_7

    .line 2434
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_TASKS_enabled:[Z

    aget-boolean v1, v1, v8

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v9, -0xa2fdae6a8ccd9L

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v9, v10, v8, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2436
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 2439
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->resumeTargetRootTaskIfNeeded()V

    return v6

    :cond_8
    if-eqz p3, :cond_9

    .line 2443
    invoke-virtual {p3}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_1

    :cond_9
    const/4 v3, 0x0

    .line 2442
    :goto_1
    invoke-virtual {p0, p1, v3, p4}, Lcom/android/server/wm/ActivityStarter;->complyActivityFlags(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    .line 2445
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-eqz v3, :cond_a

    .line 2446
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->getBackgroundActivityLaunchController()Lcom/android/server/wm/BackgroundActivityStartController;

    move-result-object v2

    move-object v3, v2

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    move-object v4, v3

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    move-object v5, v4

    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    move-object v6, v5

    iget v5, p0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    move-object v7, v6

    iget v6, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    move-object v9, v7

    iget v7, p0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    move-object v1, p1

    move-object v0, v9

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/BackgroundActivityStartController;->clearTopIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;IIII)V

    return v8

    .line 2452
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_b

    goto :goto_2

    :cond_b
    move-object v1, p2

    .line 2458
    :goto_2
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_c

    .line 2459
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2462
    :cond_c
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-eqz v2, :cond_d

    .line 2464
    invoke-virtual {v1, v6}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V

    goto :goto_3

    .line 2465
    :cond_d
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v2, :cond_e

    .line 2467
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 2471
    :cond_e
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->resumeTargetRootTaskIfNeeded()V

    .line 2475
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isDreaming()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2476
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2477
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v3

    const-string v4, "recycleTask#turnScreenOnFlag"

    .line 2476
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->wakeUp(ILjava/lang/String;)V

    .line 2480
    :cond_f
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2481
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    return v0

    :cond_10
    const/4 v0, 0x3

    return v0
.end method

.method public relatedToPackage(Ljava/lang/String;)Z
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 803
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 804
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public reset(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 2665
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2666
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    const/4 v1, -0x1

    .line 2667
    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 2668
    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    .line 2669
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v2, 0x1

    .line 2670
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    const/4 v2, 0x0

    .line 2672
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 2673
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2674
    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 2676
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 2678
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 2679
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2680
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 2681
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2682
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2683
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 2685
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 2686
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 2687
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 2688
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2689
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2690
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    .line 2692
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2693
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 2694
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    .line 2695
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 2696
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 2697
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 2698
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 2699
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    .line 2700
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    .line 2701
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mDisplayLockAndOccluded:Z

    .line 2703
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2704
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 2706
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    if-eqz p1, :cond_0

    .line 2709
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter$Request;->reset()V

    :cond_0
    return-void
.end method

.method public final resolveReusableTask(Z)Lcom/android/server/wm/Task;
    .locals 7

    .line 3006
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 3007
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3008
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    return-object v1

    .line 3019
    :cond_1
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v2, v0

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    const/high16 v2, 0x8000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 3021
    :cond_2
    invoke-virtual {p0, v4, v3}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v5

    goto :goto_0

    :cond_4
    move v0, v6

    .line 3025
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_5

    move v2, v5

    goto :goto_1

    :cond_5
    move v2, v6

    :goto_1
    and-int/2addr v0, v2

    if-eqz v0, :cond_6

    .line 3028
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v4, v0, :cond_7

    .line 3031
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v0, v2, v6}, Lcom/android/server/wm/RootWindowContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 3035
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3036
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3037
    const-string v0, "Removes redundant singleInstance"

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    :cond_6
    move-object p1, v1

    goto :goto_3

    .line 3040
    :cond_7
    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_9

    .line 3043
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eq v3, v0, :cond_8

    goto :goto_2

    :cond_8
    move v5, v6

    :goto_2
    invoke-virtual {p1, v2, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    goto :goto_3

    .line 3047
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 3048
    invoke-virtual {v0, v2, v3, p1}, Lcom/android/server/wm/RootWindowContainer;->findTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    :cond_a
    :goto_3
    if-eqz p1, :cond_b

    .line 3053
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_b

    .line 3054
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    move-object p1, v1

    :cond_b
    if-eqz p1, :cond_d

    .line 3061
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3062
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3063
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eq v0, p0, :cond_d

    move-object p1, v1

    :cond_d
    if-eqz p1, :cond_e

    .line 3068
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    :cond_e
    return-object v1
.end method

.method public final resolveToHeavyWeightSwitcherIfNeeded()I
    .locals 18

    move-object/from16 v0, p0

    .line 957
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    :cond_0
    move/from16 v17, v2

    goto/16 :goto_1

    .line 963
    :cond_1
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 968
    :cond_2
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_3

    .line 969
    iget-object v3, v1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v5, :cond_4

    iget-object v3, v1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 970
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move/from16 v17, v2

    goto/16 :goto_1

    .line 974
    :cond_4
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v4, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 975
    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_5

    .line 976
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 978
    iget-object v3, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_5
    move v7, v4

    goto :goto_0

    .line 980
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find app for caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") when starting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 981
    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 980
    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    invoke-static {v0}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    const/16 v0, -0x5e

    return v0

    .line 987
    :goto_0
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v8, v4, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    const/4 v5, 0x1

    new-array v12, v5, [Landroid/content/Intent;

    iget-object v6, v4, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    aput-object v6, v12, v2

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v13

    const/high16 v14, 0x50000000

    const/4 v15, 0x0

    const/4 v4, 0x2

    move v6, v5

    const-string v5, "android"

    move v9, v6

    const/4 v6, 0x0

    move v10, v9

    const/4 v9, 0x0

    move v11, v10

    const/4 v10, 0x0

    move/from16 v16, v11

    const/4 v11, 0x0

    move/from16 v17, v2

    move/from16 v2, v16

    invoke-virtual/range {v3 .. v15}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v3

    .line 995
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 996
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    if-ltz v5, :cond_7

    .line 998
    const-string v5, "has_result"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1000
    :cond_7
    new-instance v5, Landroid/content/IntentSender;

    invoke-direct {v5, v3}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v3, "intent"

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1001
    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowProcessController;->updateIntentForHeavyWeightActivity(Landroid/content/Intent;)V

    .line 1002
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v3, "new_app"

    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1004
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1005
    const-class v1, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    .line 1006
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1005
    const-string v3, "android"

    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1007
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object v4, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    const/4 v3, 0x0

    .line 1008
    iput-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 1009
    iput-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 1010
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iput v4, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 1011
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    iput v4, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 1012
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 1013
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget v7, v1, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    iget v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iget v6, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget v8, v1, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 1015
    invoke-static {v2, v6, v8}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v9

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v10, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 1013
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 1017
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1018
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_8

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_8
    iput-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_9

    .line 1020
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    invoke-virtual {v0, v3, v2}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_9
    :goto_1
    return v17
.end method

.method public final resumeTargetRootTaskIfNeeded()V
    .locals 5

    .line 3186
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_2

    .line 3187
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3190
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->setCurrentLaunchCanTurnScreenOn(Z)V

    .line 3192
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3193
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    goto :goto_0

    .line 3196
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    goto :goto_0

    .line 3199
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3201
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/RootWindowContainer;->updateUserRootTask(ILcom/android/server/wm/Task;)V

    return-void
.end method

.method public final sendCanNotEmbedActivityError(Lcom/android/server/wm/TaskFragment;I)V
    .locals 8

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    .line 3318
    const-string v2, "Cannot embed "

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    .line 3338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled embed result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 3320
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " that launched on another task,mLaunchMode="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 3321
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->launchModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",mLaunchFlag="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 3322
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    goto :goto_0

    .line 3328
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". TaskFragment\'s bounds:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3329
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minimum dimensions:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3330
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getMinDimensions()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 3334
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The app:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "is not trusted to "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3340
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isOrganized()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3341
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 3342
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter$Request;->errorCallbackToken:Landroid/os/IBinder;

    if-eqz v0, :cond_3

    .line 3344
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    :goto_1
    move-object v7, p0

    goto :goto_2

    .line 3345
    :cond_3
    new-instance p0, Landroid/os/OperationCanceledException;

    invoke-direct {p0, p2}, Landroid/os/OperationCanceledException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    const/4 v6, 0x2

    move-object v5, p1

    .line 3341
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return-void

    .line 3348
    :cond_4
    const-string p0, "ActivityTaskManager"

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final sendNewTaskResultRequestIfNeeded()V
    .locals 9

    .line 2887
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2892
    const-string v0, "ActivityTaskManager"

    const-string v1, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;)V

    .line 2896
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    :cond_0
    return-void
.end method

.method public set(Lcom/android/server/wm/ActivityStarter;)V
    .locals 2

    .line 756
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 757
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 758
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 759
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    .line 760
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 761
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    .line 763
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 764
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 765
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 767
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v1, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 769
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 770
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 771
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 772
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 773
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 774
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 776
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 777
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 778
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 780
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    .line 782
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 783
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 784
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    .line 785
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 786
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 787
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 788
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 790
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 791
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 793
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 794
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    .line 795
    iget-wide v0, p1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    iput-wide v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 796
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 798
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter$Request;->set(Lcom/android/server/wm/ActivityStarter$Request;)V

    return-void
.end method

.method public setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3446
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method public setActivityOptions(Landroid/os/Bundle;II)Lcom/android/server/wm/ActivityStarter;
    .locals 0

    .line 3558
    invoke-static {p1, p2, p3}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;II)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    return-object p0
.end method

.method public setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3553
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    return-object p0
.end method

.method public setAllowBalExemptionForSystemProcess(Z)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3623
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->allowBalExemptionForSystemProcess:Z

    return-object p0
.end method

.method public setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3612
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    return-object p0
.end method

.method public setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3436
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    return-object p0
.end method

.method public setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3509
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    return-object p0
.end method

.method public setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3504
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    return-object p0
.end method

.method public setCallingPid(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3489
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    return-object p0
.end method

.method public setCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3499
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    return-object p0
.end method

.method public setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3572
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    return-object p0
.end method

.method public setErrorCallbackToken(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3633
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->errorCallbackToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public setFilterCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3567
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    return-object p0
.end method

.method public setFreezeScreen(Z)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3628
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->freezeScreen:Z

    return-object p0
.end method

.method public setGlobalConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3602
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public setIgnoreTargetSecurity(Z)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3562
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    return-object p0
.end method

.method public setInTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3582
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    return-object p0
.end method

.method public setInTaskFragment(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3587
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->inTaskFragment:Lcom/android/server/wm/TaskFragment;

    return-object p0
.end method

.method public final setInitialState(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;ILcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;II)V
    .locals 12

    move/from16 v0, p5

    move-object/from16 v5, p6

    const/4 v10, 0x0

    .line 2717
    invoke-virtual {p0, v10}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    .line 2719
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2720
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 2721
    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2722
    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    move/from16 v1, p10

    .line 2723
    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    .line 2724
    iput-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v11, 0x0

    if-eqz v5, :cond_0

    .line 2725
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v11

    :goto_0
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    move-object/from16 v1, p7

    .line 2726
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    move-object/from16 v1, p8

    .line 2727
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move/from16 v1, p9

    .line 2728
    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    .line 2730
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 2734
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    move-object v4, p1

    move-object v6, p2

    move-object v2, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 2736
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {p2}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredTaskDisplayArea()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2737
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object p2, p2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_1

    .line 2738
    :cond_1
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2739
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget p2, p2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput p2, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 2741
    iget p2, p1, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    iput p2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v1, 0x3

    const/4 v3, 0x1

    if-ne v1, p2, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v10

    :goto_2
    const/4 v6, 0x2

    if-ne v6, p2, :cond_3

    move p2, v3

    goto :goto_3

    :cond_3
    move p2, v10

    .line 2743
    :goto_3
    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 2745
    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v7

    .line 2743
    invoke-virtual {p0, p1, v5, p2, v7}, Lcom/android/server/wm/ActivityStarter;->adjustLaunchFlagsToDocumentMode(Lcom/android/server/wm/ActivityRecord;ZZI)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2746
    iget-boolean p2, p1, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    const/high16 v5, 0x80000

    if-eqz p2, :cond_4

    .line 2747
    invoke-virtual {p0, v6, v1}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result p2

    if-nez p2, :cond_4

    iget p2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr p2, v5

    if-eqz p2, :cond_4

    move p2, v3

    goto :goto_4

    :cond_4
    move p2, v10

    :goto_4
    iput-boolean p2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 2750
    iget p2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v1, 0x4

    const/high16 v7, 0x10000000

    if-ne p2, v1, :cond_5

    .line 2753
    iget p2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr p2, v7

    iput p2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2756
    :cond_5
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    if-eqz p2, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    .line 2757
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 2762
    iget p2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr p2, v7

    iput p2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2765
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->sendNewTaskResultRequestIfNeeded()V

    .line 2767
    iget p2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int v1, p2, v5

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_7

    or-int/2addr p2, v7

    .line 2768
    iput p2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2773
    :cond_7
    iget p2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int v1, p2, v7

    if-eqz v1, :cond_9

    .line 2774
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-ne v1, v6, :cond_9

    :cond_8
    const/high16 v1, 0x8000000

    or-int/2addr p2, v1

    .line 2776
    iput p2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2782
    :cond_9
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x40000

    and-int/2addr v1, v5

    if-nez v1, :cond_a

    move v1, v3

    goto :goto_5

    :cond_a
    move v1, v10

    :goto_5
    iput-boolean v1, p2, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 2783
    sget-boolean p2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz p2, :cond_b

    sget-object p2, Lcom/android/server/wm/ActivityStarter;->TAG_USER_LEAVING:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity() => mUserLeaving="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v5, v5, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result p2

    .line 2790
    const-string v1, "ActivityTaskManager"

    if-nez p2, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t resume non-current user r="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-eqz p2, :cond_e

    .line 2791
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz p2, :cond_d

    goto :goto_6

    .line 2795
    :cond_d
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    goto :goto_7

    .line 2792
    :cond_e
    :goto_6
    iput-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    .line 2793
    iput-boolean v10, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2798
    :goto_7
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz p2, :cond_12

    .line 2799
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result p2

    const/4 v5, -0x1

    if-eq p2, v5, :cond_f

    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getTaskOverlay()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 2800
    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityRecord;->setTaskOverlay(Z)V

    .line 2801
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->canTaskOverlayResume()Z

    move-result p2

    if-nez p2, :cond_10

    .line 2802
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2803
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v5

    .line 2802
    invoke-virtual {p2, v5}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object p2

    if-eqz p2, :cond_10

    .line 2804
    invoke-virtual {p2, p1}, Lcom/android/server/wm/TaskFragment;->canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p2

    if-nez p2, :cond_10

    .line 2808
    iput-boolean v10, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2809
    iput v6, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    goto :goto_8

    .line 2812
    :cond_f
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result p2

    if-eqz p2, :cond_10

    .line 2813
    iput-boolean v10, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2814
    iput v6, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 2816
    :cond_10
    :goto_8
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getTransientLaunch()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    .line 2817
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object p2

    .line 2818
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v5

    .line 2819
    invoke-virtual {p2, v5}, Lcom/android/server/wm/KeyguardController;->isKeyguardOccluded(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/wm/ActivityStarter;->mDisplayLockAndOccluded:Z

    .line 2821
    iget-boolean v5, p0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    if-eqz v5, :cond_11

    if-eqz p2, :cond_11

    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2822
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result p2

    if-eqz p2, :cond_11

    .line 2823
    iput-boolean v10, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2824
    iput v6, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 2826
    :cond_11
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-nez p4, :cond_12

    .line 2829
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2830
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchTaskFragmentToken()Landroid/os/IBinder;

    move-result-object p2

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2829
    invoke-static {p2, v5}, Lcom/android/server/wm/TaskFragment;->fromTaskFragmentToken(Landroid/os/IBinder;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/TaskFragment;

    move-result-object p2

    if-eqz p2, :cond_13

    .line 2831
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2833
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not start activity in TaskFragment in PIP: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v11

    goto :goto_9

    :cond_12
    move-object/from16 p2, p4

    .line 2840
    :cond_13
    :goto_9
    iget v5, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v7, 0x1000000

    and-int/2addr v5, v7

    if-eqz v5, :cond_14

    move-object/from16 v5, p6

    goto :goto_a

    :cond_14
    move-object v5, v11

    :goto_a
    iput-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 2842
    iput-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-eqz p3, :cond_15

    .line 2847
    iget-boolean v5, p3, Lcom/android/server/wm/Task;->inRecents:Z

    if-nez v5, :cond_15

    .line 2848
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting activity in task not in recents: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    iput-object v11, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 2852
    :cond_15
    iget-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-eqz p3, :cond_16

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p3, v2}, Lcom/android/server/wm/Task;->isSameRequiredDisplayCategory(Landroid/content/pm/ActivityInfo;)Z

    move-result p3

    if-nez p3, :cond_16

    .line 2853
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting activity in task with different display category: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    iput-object v11, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 2857
    :cond_16
    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 2859
    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/lit8 p2, v0, 0x1

    if-eqz p2, :cond_19

    if-nez p6, :cond_17

    .line 2866
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-eqz p2, :cond_17

    .line 2868
    iget-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p2, p3}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    goto :goto_b

    :cond_17
    move-object/from16 p2, p6

    :goto_b
    if-eqz p2, :cond_18

    .line 2871
    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 2872
    invoke-virtual {p2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    .line 2874
    :cond_18
    iget p1, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 2878
    :cond_19
    iget p1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 p2, 0x10000

    and-int/2addr p1, p2

    if-eqz p1, :cond_1a

    goto :goto_c

    :cond_1a
    move v3, v10

    :goto_c
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 2880
    iget p1, p0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    const/16 p2, 0x7f

    if-ne p1, p2, :cond_1b

    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 2881
    iput v6, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 2882
    iput-boolean v10, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    :cond_1b
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3417
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public setIntentCreatorPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3519
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->intentCreatorPackage:Ljava/lang/String;

    return-object p0
.end method

.method public setIntentCreatorUid(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3514
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->intentCreatorUid:I

    return-object p0
.end method

.method public setIntentGrants(Lcom/android/server/uri/NeededUriGrants;)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3426
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    return-object p0
.end method

.method public final setNewTask(Lcom/android/server/wm/Task;)V
    .locals 12

    .line 3205
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v0

    if-nez v0, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    move v8, v1

    .line 3206
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v10, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v11, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/wm/Task;->reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3209
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/TransitionController;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    .line 3210
    const-string v3, "setTaskFromReuseOrCreateNewTask"

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    .line 3212
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_TASKS_enabled:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x1e660f29cd5dc2c7L    # -1.458816009883848E162

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v5, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 3216
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V

    :cond_2
    return-void
.end method

.method public setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3617
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    return-object p0
.end method

.method public setOutActivity([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3577
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3597
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    return-object p0
.end method

.method public setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3533
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    return-object p0
.end method

.method public setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3543
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    return-object p0
.end method

.method public setReason(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3431
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    return-object p0
.end method

.method public setRequestCode(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3476
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    return-object p0
.end method

.method public setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3441
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    return-object p0
.end method

.method public setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3466
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    return-object p0
.end method

.method public setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3471
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    return-object p0
.end method

.method public setStartFlags(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3548
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    return-object p0
.end method

.method public final setTargetRootTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3079
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    .line 3080
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v3, :cond_0

    .line 3083
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    move-object v9, v4

    goto :goto_0

    :cond_0
    move-object v9, v2

    .line 3085
    :goto_0
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-nez v4, :cond_2

    .line 3087
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    if-eqz v4, :cond_1

    .line 3090
    invoke-static {v4}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    goto :goto_1

    .line 3092
    :cond_1
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v5, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v4, v5, v3, v6}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 3099
    :cond_2
    :goto_1
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v4

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move-object/from16 v20, v4

    move-object v4, v3

    move-object/from16 v3, v20

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-object v3, v4

    .line 3105
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v4, v5, :cond_8

    .line 3106
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v4, v4, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v5, v2

    goto :goto_2

    .line 3108
    :cond_3
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_4

    .line 3109
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    goto :goto_3

    :cond_4
    move-object v5, v2

    :goto_3
    if-ne v5, v3, :cond_7

    if-eqz v4, :cond_5

    .line 3111
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-ne v5, v6, :cond_7

    :cond_5
    if-eqz v4, :cond_6

    if-eq v4, v9, :cond_6

    goto :goto_4

    :cond_6
    move v4, v10

    goto :goto_5

    :cond_7
    :goto_4
    move v4, v11

    :goto_5
    move v12, v4

    goto :goto_6

    :cond_8
    move v12, v11

    :goto_6
    if-eqz v12, :cond_e

    .line 3118
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v4

    if-nez v4, :cond_e

    .line 3119
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v5, 0x400000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3121
    iget-boolean v4, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v4, :cond_9

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_9

    .line 3122
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V

    .line 3125
    :cond_9
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3128
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-eq v4, v3, :cond_a

    .line 3129
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eq v4, v5, :cond_a

    .line 3130
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    const v5, 0x7fffffff

    invoke-virtual {v4, v5, v3, v10}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 3132
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    :cond_a
    move-object v14, v3

    .line 3137
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3138
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 3139
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-ne v1, v3, :cond_b

    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 3140
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    move-result v3

    if-nez v3, :cond_b

    move v3, v11

    goto :goto_7

    :cond_b
    move v3, v10

    .line 3147
    :goto_7
    iget-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-boolean v15, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const/16 v18, 0x1

    const-string v19, "bringingFoundTaskToFront"

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/wm/Task;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V

    xor-int/2addr v3, v11

    .line 3150
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    move-object v3, v14

    goto :goto_8

    .line 3151
    :cond_c
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_d

    .line 3156
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v8, 0x1

    const-string v9, "reparentToTargetRootTask"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)Z

    .line 3158
    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 3160
    :cond_d
    :goto_8
    iput-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    :cond_e
    if-eqz v12, :cond_f

    .line 3163
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->logPIOnlyCreatorAllowsBAL()V

    .line 3167
    :cond_f
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    if-eqz v2, :cond_10

    .line 3168
    iput-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    .line 3169
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v4, v4, v11

    if-eqz v4, :cond_10

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    int-to-long v5, v5

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v2, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v4, 0x437c906691e03227L    # 1.2864111290162443E17

    const/16 v6, 0x10

    invoke-static {v7, v4, v5, v6, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3174
    :cond_10
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    if-eqz v2, :cond_11

    .line 3175
    iput-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    .line 3180
    :cond_11
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 3181
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 3182
    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 3181
    invoke-virtual {v1, v3, v10, v2, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public setUserId(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3607
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    return-object p0
.end method

.method public setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3461
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    return-object p0
.end method

.method public setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3456
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    return-object p0
.end method

.method public setWaitResult(Landroid/app/WaitResult;)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 3592
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    return-object p0
.end method

.method public startActivityInner(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/uri/NeededUriGrants;I)I
    .locals 15

    .line 1928
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getCode()I

    move-result v9

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v5, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v10, p11

    .line 1927
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/ActivityStarter;->setInitialState(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;ILcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;II)V

    .line 1930
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->computeLaunchingTaskFlags()V

    .line 1931
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1935
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x0

    move v4, v7

    :cond_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v4, v4, 0x1

    check-cast v8, Lcom/android/server/wm/ActivityRecord;

    .line 1936
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_0

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v7

    .line 1945
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    const/4 v8, 0x0

    if-eqz v3, :cond_2

    .line 1946
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v8

    :goto_1
    if-eqz v6, :cond_3

    .line 1948
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getLaunchedFromBubble()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    goto :goto_2

    :cond_3
    move v4, v7

    .line 1954
    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityStarter;->resolveReusableTask(Z)Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1957
    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->freezeRecentTasksReordering()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget v10, v1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 1958
    invoke-virtual {v9, v10}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 1959
    invoke-virtual {v9}, Lcom/android/server/wm/RecentTasks;->isFreezeTaskListReorderingSet()Z

    move-result v9

    if-nez v9, :cond_4

    .line 1960
    iput-boolean v5, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 1961
    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v9}, Lcom/android/server/wm/RecentTasks;->setFreezeTaskListReordering()V

    :cond_4
    if-eqz v4, :cond_5

    move-object v9, v4

    goto :goto_3

    .line 1965
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->computeTargetTask()Lcom/android/server/wm/Task;

    move-result-object v9

    :goto_3
    if-nez v9, :cond_6

    move v10, v5

    goto :goto_4

    :cond_6
    move v10, v7

    .line 1967
    :goto_4
    iput-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 1969
    invoke-virtual {p0, v1, v6, v9}, Lcom/android/server/wm/ActivityStarter;->computeLaunchParams(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    .line 1972
    invoke-virtual {p0, v1, v10, v9}, Lcom/android/server/wm/ActivityStarter;->isAllowedToStart(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/Task;)I

    move-result v11

    if-eqz v11, :cond_8

    .line 1974
    iget-object p0, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_7

    .line 1975
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 p2, v0

    move/from16 p3, v1

    move-object/from16 p6, v2

    move-object/from16 p7, v3

    move/from16 p1, v4

    move/from16 p4, v5

    move-object/from16 p5, v6

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;)V

    :cond_7
    return v11

    :cond_8
    if-eqz v9, :cond_d

    .line 1982
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getTreeWeight()I

    move-result v11

    int-to-long v11, v11

    const-wide/16 v13, 0x12c

    cmp-long v11, v11, v13

    if-lez v11, :cond_9

    .line 1983
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " because it has contained too many activities or windows (abort starting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from uid="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    const-string p0, "bulky-task"

    invoke-virtual {v9, p0}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    const/16 p0, 0x66

    return p0

    .line 1991
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v11

    if-nez v11, :cond_b

    iget-object v11, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v11, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v11, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    iget v11, v11, Lcom/android/server/wm/WindowProcessController;->mUid:I

    move/from16 v12, p11

    if-eq v11, v12, :cond_b

    :cond_a
    if-eqz v3, :cond_b

    .line 1993
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 1994
    invoke-virtual {v11, v9}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v11, 0x2

    .line 1995
    iput v11, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 2001
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v11

    if-nez v11, :cond_c

    .line 2002
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->onlyCreatorAllows()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 2003
    iput v5, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    .line 2005
    :cond_c
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    :cond_d
    if-eqz v10, :cond_e

    move-object v11, v8

    goto :goto_5

    .line 2009
    :cond_e
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    :goto_5
    if-eqz v11, :cond_11

    const/4 v12, 0x3

    .line 2013
    iget v13, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v12, v13, :cond_f

    iget-object v12, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v12, :cond_f

    .line 2014
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v12

    if-ne v9, v12, :cond_f

    .line 2015
    iget-object v12, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v13, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v14, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v14, v14, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v12, v13, v14, v7}, Lcom/android/server/wm/RootWindowContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    if-eqz v12, :cond_f

    .line 2017
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v13

    if-eq v13, v9, :cond_f

    .line 2018
    const-string v13, "Removes redundant singleInstance"

    invoke-virtual {v12, v13}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    .line 2021
    :cond_f
    iget-object v12, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v12, :cond_10

    .line 2022
    iget v12, v12, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    iput v12, v11, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    .line 2024
    :cond_10
    invoke-virtual {p0, v11}, Lcom/android/server/wm/ActivityStarter;->recordTransientLaunchIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    move-object/from16 p3, p0

    move-object/from16 p8, p9

    move-object/from16 p7, p10

    move-object/from16 p6, v4

    move-object/from16 p4, v9

    move-object/from16 p5, v11

    .line 2027
    invoke-virtual/range {p3 .. p8}, Lcom/android/server/wm/ActivityStarter;->recycleTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)I

    move-result v0

    move-object/from16 v11, p4

    move-object/from16 v4, p7

    if-eqz v0, :cond_12

    return v0

    :cond_11
    move-object/from16 v4, p10

    move-object v11, v9

    .line 2032
    iput-boolean v5, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2037
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2039
    invoke-virtual {p0, v0, v4}, Lcom/android/server/wm/ActivityStarter;->deliverToCurrentTopIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)I

    move-result v12

    if-eqz v12, :cond_13

    return v12

    .line 2046
    :cond_13
    iget-object v12, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v13, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v12, v7, v13}, Lcom/android/server/wm/RootWindowContainer;->startPowerModeLaunchIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 2050
    iget-object v12, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-nez v12, :cond_14

    .line 2051
    iget-object v12, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v13, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v14, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, v12, v13, v11, v14}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v12

    iput-object v12, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    :cond_14
    if-eqz v10, :cond_16

    .line 2055
    iget-boolean v12, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v12, :cond_15

    iget-object v12, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v12, :cond_15

    .line 2056
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v12

    goto :goto_6

    :cond_15
    move-object v12, v8

    .line 2057
    :goto_6
    invoke-virtual {p0, v12}, Lcom/android/server/wm/ActivityStarter;->setNewTask(Lcom/android/server/wm/Task;)V

    goto :goto_7

    .line 2058
    :cond_16
    iget-boolean v12, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-eqz v12, :cond_17

    .line 2059
    const-string v12, "adding to task"

    invoke-virtual {p0, v11, v12}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    .line 2063
    :cond_17
    :goto_7
    iget-object v12, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, v12}, Lcom/android/server/wm/ActivityStarter;->recordTransientLaunchIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 2065
    iget-boolean v12, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v12, :cond_19

    .line 2066
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v12

    if-nez v12, :cond_18

    .line 2067
    iget-object v12, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v12}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v12

    const-string v13, "reuseOrNewTask"

    invoke-virtual {v12, v13, v11}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 2077
    iget-object v11, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v11}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v11

    if-nez v11, :cond_19

    iget-object v11, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2078
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityTaskManagerService;->isDreaming()Z

    move-result v11

    if-eqz v11, :cond_19

    if-nez v2, :cond_19

    .line 2086
    iput-boolean v5, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 2087
    iput-boolean v5, v1, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    goto :goto_8

    .line 2090
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->logPIOnlyCreatorAllowsBAL()V

    .line 2094
    :cond_19
    :goto_8
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v11, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2095
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v11

    .line 2094
    invoke-interface {v2, v4, v11}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 2096
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_1a

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1a

    .line 2098
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2099
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    .line 2100
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-wide/16 v11, 0x0

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v1, v4, v11, v12, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    .line 2103
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v11, v4, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v12, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2104
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/4 v13, 0x1

    move-object/from16 p3, v1

    move/from16 p7, v2

    move/from16 p6, v4

    move/from16 p4, v11

    move-object/from16 p5, v12

    move/from16 p8, v13

    .line 2103
    invoke-virtual/range {p3 .. p8}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    goto :goto_9

    .line 2106
    :cond_1a
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->mShareIdentity:Z

    if-eqz v2, :cond_1b

    .line 2107
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2108
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    .line 2109
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v11, v4, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v12, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2110
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    const/4 v13, 0x1

    move/from16 p7, v1

    move-object/from16 p3, v2

    move/from16 p6, v4

    move/from16 p4, v11

    move-object/from16 p5, v12

    move/from16 p8, v13

    .line 2109
    invoke-virtual/range {p3 .. p8}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 2113
    :cond_1b
    :goto_9
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v11

    if-eqz v10, :cond_1c

    .line 2115
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v2, v11, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2116
    invoke-virtual {v11}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v4

    invoke-virtual {v11}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v12

    .line 2115
    invoke-static {v1, v2, v4, v12}, Lcom/android/server/wm/EventLogTags;->writeWmCreateTask(IIII)V

    .line 2118
    :cond_1c
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/16 v2, 0x7535

    invoke-virtual {v1, v2, v11}, Lcom/android/server/wm/ActivityRecord;->logStartActivity(ILcom/android/server/wm/Task;)V

    .line 2120
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    if-eq v11, v3, :cond_1d

    move v4, v5

    :goto_a
    move-object v2, v0

    goto :goto_b

    :cond_1d
    move v4, v7

    goto :goto_a

    .line 2128
    :goto_b
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move v3, v10

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/Task;->startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;ZZLandroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V

    .line 2130
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_22

    .line 2131
    invoke-virtual {v11}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2132
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    move-result v1

    if-eqz v1, :cond_21

    if-eqz v0, :cond_1e

    .line 2133
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v1, v0, :cond_1e

    goto :goto_d

    .line 2153
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2154
    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->isTopDisplayFocusedRootTask(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 2155
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2156
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const-string v1, "startActivityInner"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    goto :goto_c

    .line 2158
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->logPIOnlyCreatorAllowsBAL()V

    .line 2161
    :cond_20
    :goto_c
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    goto :goto_e

    .line 2143
    :cond_21
    :goto_d
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;)V

    .line 2146
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 2165
    :cond_22
    :goto_e
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/RootWindowContainer;->updateUserRootTask(ILcom/android/server/wm/Task;)V

    .line 2168
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, v11}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 2169
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v11, v1, v2, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;)V

    .line 2174
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->isLaunchIntoPip()Z

    move-result v0

    if-eqz v0, :cond_23

    if-eqz v6, :cond_23

    .line 2175
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne v0, v1, :cond_23

    .line 2176
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2177
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v2, "launch-into-pip"

    invoke-virtual {v0, v1, v6, v2, v8}, Lcom/android/server/wm/RootWindowContainer;->moveActivityToPinnedRootTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 2181
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getBackgroundActivityLaunchController()Lcom/android/server/wm/BackgroundActivityStartController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2182
    invoke-virtual {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController;->onNewActivityLaunched(Lcom/android/server/wm/ActivityRecord;)V

    return v7
.end method

.method public final startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/uri/NeededUriGrants;ILcom/android/server/wm/Transition;Z)I
    .locals 8

    move-object/from16 v7, p12

    .line 1704
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->takeRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v6

    if-eqz p13, :cond_1

    .line 1706
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->freezeScreen:Z

    if-eqz v0, :cond_1

    .line 1707
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredTaskDisplayArea()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1708
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_0

    .line 1709
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 1710
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1711
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v0

    .line 1710
    invoke-virtual {v1, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1713
    invoke-virtual {v7, v0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1714
    invoke-virtual {v7, v0}, Lcom/android/server/wm/Transition;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    .line 1718
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 1719
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, 0x20

    const/16 v4, -0x60

    .line 1721
    :try_start_1
    const-string v0, "startActivityInner"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1723
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityStarter;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1726
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/wm/ActivityStarter;->startActivityInner(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/uri/NeededUriGrants;I)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1732
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move/from16 v5, p13

    .line 1733
    :goto_1
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityStarter;->handleStartResult(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;IZLandroid/window/RemoteTransition;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/Task;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p2, v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p2, v0

    .line 1730
    :try_start_3
    const-string p3, "ActivityTaskManager"

    const-string p4, "Exception on startActivityInner"

    invoke-static {p3, p4, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1732
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move-object/from16 v7, p12

    move/from16 v5, p13

    goto :goto_1

    .line 1737
    :goto_2
    iget-object p5, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p5}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1739
    invoke-virtual {p0, p1, v4, p2}, Lcom/android/server/wm/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;)V

    return v4

    .line 1732
    :goto_3
    :try_start_5
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move-object/from16 v7, p12

    move/from16 v5, p13

    .line 1733
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityStarter;->handleStartResult(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;IZLandroid/window/RemoteTransition;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/Task;

    .line 1735
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1737
    :goto_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1738
    throw p1
.end method

.method public final waitResultIfNeeded(Landroid/app/WaitResult;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)I
    .locals 3

    .line 1032
    iget v0, p1, Landroid/app/WaitResult;->result:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1033
    iget-boolean v2, p2, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 1034
    invoke-virtual {p2, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1041
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->waitActivityVisibleOrLaunched(Landroid/app/WaitResult;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)V

    if-nez v0, :cond_1

    .line 1042
    iget p0, p1, Landroid/app/WaitResult;->result:I

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 1036
    iput-boolean p0, p1, Landroid/app/WaitResult;->timeout:Z

    .line 1037
    iget-object p0, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object p0, p1, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    const-wide/16 p2, 0x0

    .line 1038
    iput-wide p2, p1, Landroid/app/WaitResult;->totalTime:J

    return v0
.end method
