.class public Lcom/android/server/wm/EnsureActivitiesVisibleHelper;
.super Ljava/lang/Object;
.source "EnsureActivitiesVisibleHelper.java"


# instance fields
.field public mAboveTop:Z

.field public mBehindFullyOccludedContainer:Z

.field public mContainerShouldBeVisible:Z

.field public mNotifyClients:Z

.field public mStarting:Lcom/android/server/wm/ActivityRecord;

.field public final mTaskFragment:Lcom/android/server/wm/TaskFragment;

.field public mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public static synthetic $r8$lambda$QjmemDRlAMjTs9p6w-73LC8Uhds(Ljava/util/ArrayList;Lcom/android/server/wm/TaskFragment;)V
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$pFgq3mv7pWvdD6HY9d3CCGkWB-g(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskFragment;)Z
    .locals 0

    .line 116
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/TaskFragment;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    return-void
.end method


# virtual methods
.method public final makeVisibleAndRestartIfNeeded(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityRecord;)V
    .locals 4

    .line 239
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Lcom/android/server/wm/Task;->TAG_VISIBILITY:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start and freeze screen for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p3, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_3

    .line 243
    :cond_1
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_2

    .line 244
    sget-object v0, Lcom/android/server/wm/Task;->TAG_VISIBILITY:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting and making visible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_2
    invoke-virtual {p3, v1}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    :cond_3
    if-eq p3, p1, :cond_4

    .line 248
    iget-boolean p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    if-eqz p1, :cond_4

    .line 249
    iget-object p0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, p3, p2, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    :cond_4
    return-void
.end method

.method public process(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 9

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->reset(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 75
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/android/server/wm/Task;->TAG_VISIBILITY:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureActivitiesVisible behind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->checkTranslucentActivityWaiting(Lcom/android/server/wm/ActivityRecord;)V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 88
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskFragment;->canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 89
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 92
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ltz v3, :cond_c

    .line 93
    iget-object v5, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 94
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 96
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 97
    invoke-virtual {v6, p1, p2}, Lcom/android/server/wm/TaskFragment;->updateActivityVisibilities(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 100
    iget-boolean v5, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    .line 101
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 102
    invoke-virtual {v6, p1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v7

    if-nez v7, :cond_4

    move v7, v2

    goto :goto_2

    :cond_4
    move v7, v1

    :goto_2
    or-int/2addr v5, v7

    iput-boolean v5, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    .line 103
    iget-boolean v5, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    if-ne v5, v6, :cond_5

    .line 104
    iput-boolean v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    .line 107
    :cond_5
    iget-boolean v5, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_8

    .line 111
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 113
    invoke-virtual {v6, p1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5

    if-nez v5, :cond_b

    new-instance v5, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    .line 114
    invoke-virtual {v6, v5}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_3

    .line 120
    :cond_7
    iput-boolean v2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    goto :goto_3

    .line 125
    :cond_8
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v5

    if-eqz v5, :cond_b

    if-nez v4, :cond_9

    .line 127
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 130
    :cond_9
    new-instance v5, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v6, v5}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Consumer;)V

    goto :goto_3

    .line 134
    :cond_a
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 135
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    invoke-virtual {p0, v5, p1, v0}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->setActivityVisibilityState(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_b
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    :cond_c
    return-void
.end method

.method public reset(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 2

    .line 50
    iput-object p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    .line 51
    iget-object p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 54
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    .line 55
    iget-object p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    iget-object v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContainerShouldBeVisible:Z

    xor-int/2addr p1, v0

    .line 56
    iput-boolean p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    .line 57
    iput-boolean p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    return-void
.end method

.method public final setActivityVisibilityState(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 9

    .line 142
    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 143
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 146
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->makeInvisible()V

    return-void

    .line 149
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    .line 151
    iget-boolean v3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityRecord;->updateVisibilityIgnoringKeyguard(Z)V

    .line 152
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisibleUnchecked()Z

    move-result v3

    .line 155
    iget-boolean v4, p1, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-eqz v4, :cond_4

    .line 156
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 158
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v4, :cond_2

    .line 159
    sget-object v4, Lcom/android/server/wm/Task;->TAG_VISIBILITY:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fullscreen: at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " containerVisible="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContainerShouldBeVisible:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " behindFullyOccluded="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    goto :goto_1

    .line 165
    :cond_3
    iput-boolean v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    goto :goto_1

    .line 167
    :cond_4
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 168
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->cancelInitializing()V

    .line 171
    :cond_5
    :goto_1
    const-string v4, " containerShouldBeVisible="

    const-string v5, " state="

    const-string v6, " finishing="

    if-eqz v3, :cond_10

    .line 172
    iget-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_6

    goto/16 :goto_3

    .line 175
    :cond_6
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v3, :cond_7

    .line 176
    sget-object v3, Lcom/android/server/wm/Task;->TAG_VISIBILITY:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Make visible? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 176
    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_7
    iget-object v3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    if-eq p1, v3, :cond_9

    iget-boolean v3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    if-eqz v3, :cond_9

    if-nez v0, :cond_8

    .line 183
    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/DisplayContent;->applyFixedRotationForNonTopVisibleActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 185
    :cond_8
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    .line 188
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v3

    if-nez v3, :cond_b

    .line 189
    iget-object p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    if-eqz p3, :cond_a

    if-eqz v0, :cond_a

    move v1, v2

    :cond_a
    invoke-virtual {p0, p2, v1, p1}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->makeVisibleAndRestartIfNeeded(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityRecord;)V

    goto/16 :goto_2

    .line 190
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p3

    if-eqz p3, :cond_f

    .line 192
    sget-boolean p3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz p3, :cond_c

    .line 193
    sget-object p3, Lcom/android/server/wm/Task;->TAG_VISIBILITY:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping: already visible at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_c
    iget-boolean p3, p1, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    if-eqz p3, :cond_e

    iget-boolean v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    if-eqz v0, :cond_e

    if-eqz p3, :cond_d

    const/4 p2, 0x0

    .line 197
    :cond_d
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    .line 198
    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    .line 201
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->handleAlreadyVisible()V

    .line 202
    iget-boolean p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    if-eqz p2, :cond_12

    .line 203
    iget-object p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    goto :goto_2

    .line 206
    :cond_f
    iget-object p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    iget-boolean p3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/ActivityRecord;->makeVisibleIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V

    goto :goto_2

    .line 209
    :cond_10
    sget-boolean p2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz p2, :cond_11

    .line 210
    sget-object p2, Lcom/android/server/wm/Task;->TAG_VISIBILITY:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Make invisible? "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContainerShouldBeVisible:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " behindFullyOccludedContainer="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mLaunchTaskBehind="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p1, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 210
    invoke-static {p2, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->makeInvisible()V

    .line 219
    :cond_12
    :goto_2
    iget-boolean p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    if-nez p2, :cond_14

    iget-object p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p2

    if-eqz p2, :cond_14

    .line 220
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 221
    sget-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz p1, :cond_13

    .line 222
    sget-object p1, Lcom/android/server/wm/Task;->TAG_VISIBILITY:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Home task: at "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContainerShouldBeVisible:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " behindOccludedParentContainer="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_13
    iput-boolean v2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    :cond_14
    :goto_3
    return-void
.end method
