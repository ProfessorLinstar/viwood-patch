.class public Lcom/android/server/wm/RecentsAnimation;
.super Ljava/lang/Object;
.source "RecentsAnimation.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RecentsAnimation"


# instance fields
.field public final mActivityStartController:Lcom/android/server/wm/ActivityStartController;

.field public final mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field public final mRecentsComponent:Landroid/content/ComponentName;

.field public final mRecentsFeatureId:Ljava/lang/String;

.field public final mRecentsUid:I

.field public final mTargetActivityType:I

.field public final mTargetIntent:Landroid/content/Intent;

.field public final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$nqMtnnzx_C3cCWD_kdtY97Bzhpg(Lcom/android/server/wm/RecentsAnimation;Lcom/android/server/wm/Task;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentsAnimation;->matchesTarget(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStartController;Landroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 63
    iget-object p2, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 64
    iput-object p3, p0, Lcom/android/server/wm/RecentsAnimation;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 65
    iput-object p4, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    .line 66
    iput-object p5, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsComponent:Landroid/content/ComponentName;

    .line 67
    iput-object p6, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsFeatureId:Ljava/lang/String;

    .line 68
    iput p7, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsUid:I

    .line 69
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/RecentsAnimation;->mUserId:I

    .line 70
    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 73
    :goto_0
    iput p1, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    return-void
.end method


# virtual methods
.method public final getTargetActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 173
    :cond_0
    new-instance v1, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda1;-><init>()V

    const-class v2, Lcom/android/server/wm/Task;

    .line 174
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 173
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object p0

    .line 175
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p1

    .line 176
    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    if-eqz p1, :cond_1

    .line 177
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final matchesTarget(Lcom/android/server/wm/Task;)Z
    .locals 2

    .line 181
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getNonFinishingActivityCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget v1, p0, Lcom/android/server/wm/RecentsAnimation;->mUserId:I

    if-ne v0, v1, :cond_0

    .line 182
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public preloadRecentsActivity()V
    .locals 8

    .line 82
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x342818509bebc4c7L    # -2.3445975397956602E57

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v4, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget v2, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 87
    const-string v2, "preloadRecents"

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 88
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 89
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_1

    .line 93
    :cond_1
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->getCurrentProcState()I

    move-result v4

    const/16 v5, 0x10

    if-lt v4, v5, :cond_2

    .line 94
    sget-object p0, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip preload recents for cached proc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 101
    :cond_2
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    .line 102
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v6, -0x2eb536feb407cd6dL    # -4.065213145291019E83

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v6, v7, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    new-instance v4, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v4, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 113
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RecentsAnimation;->startRecentsActivityInBackground(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget v4, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v0, v1, v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_5

    .line 118
    sget-object v0, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 123
    :cond_5
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v4

    if-nez v4, :cond_7

    .line 124
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x636fc4f1837ecbbcL    # -4.199904826239937E-171

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 125
    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 128
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 129
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 130
    invoke-virtual {p0, v0}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/ActivityRecord;)V

    .line 136
    :cond_7
    iget-boolean p0, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez p0, :cond_8

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    .line 137
    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p0

    if-nez p0, :cond_8

    .line 142
    invoke-virtual {v0, v3, v3, v2}, Lcom/android/server/wm/ActivityRecord;->addToStopping(ZZLjava/lang/String;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public final startRecentsActivityInBackground(Ljava/lang/String;)V
    .locals 4

    .line 148
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 149
    iget v1, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 150
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->setAvoidMoveToFront()V

    .line 151
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    const/high16 v2, 0x10010000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    .line 154
    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    iget v1, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsUid:I

    .line 155
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsComponent:Landroid/content/ComponentName;

    .line 156
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsFeatureId:Ljava/lang/String;

    .line 157
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    new-instance v1, Lcom/android/server/wm/SafeActivityOptions;

    .line 159
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;II)V

    .line 158
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    iget p0, p0, Lcom/android/server/wm/RecentsAnimation;->mUserId:I

    .line 160
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 161
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    return-void
.end method
