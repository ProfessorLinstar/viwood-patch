.class public Lcom/android/server/wm/DesktopModeLaunchParamsModifier;
.super Ljava/lang/Object;
.source "DesktopModeLaunchParamsModifier.java"

# interfaces
.implements Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$eIFc4C2U2JJa0ZohMsXAO75lM4Y(Lcom/android/server/wm/DesktopModeLaunchParamsModifier;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 166
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final varargs appendLog(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .locals 8

    move-object/from16 v1, p8

    move-object/from16 v4, p9

    .line 81
    iget-object v2, p0, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/wm/DesktopModeHelper;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_0

    .line 82
    const-string p1, "desktop mode is not enabled, skipping"

    new-array p2, v5, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_0
    if-eqz p1, :cond_f

    .line 86
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 91
    :cond_1
    sget-object v2, Landroid/window/DesktopModeFlags;->DISABLE_DESKTOP_LAUNCH_PARAMS_OUTSIDE_DESKTOP_BUG_FIX:Landroid/window/DesktopModeFlags;

    invoke-virtual {v2}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 92
    invoke-virtual {p0, p1, p5, v1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isEnteringDesktopMode(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 93
    const-string p1, "not entering desktop mode, skipping"

    new-array p2, v5, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    .line 98
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 99
    const-string p1, "has created-by-organizer-task, skipping"

    new-array p2, v5, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    .line 103
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v6

    if-nez v6, :cond_4

    .line 104
    const-string p1, "not standard or undefined activity type, skipping"

    new-array p2, v5, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_4
    const/4 v6, 0x1

    if-ge p7, v6, :cond_5

    .line 108
    const-string p1, "not in windowing mode or bounds phase, skipping"

    new-array p2, v5, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    .line 113
    :cond_5
    invoke-virtual {v4, v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    if-eqz p4, :cond_7

    .line 115
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 116
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p4

    .line 117
    invoke-virtual {v2}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 118
    invoke-virtual {p0, p4, p5, v1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isEnteringDesktopMode(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 p4, 0x5

    .line 121
    iput p4, v4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 122
    const-string p4, "freeform window mode applied to task trampoline"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {p0, p4, v7}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 129
    :cond_6
    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p4

    iput p4, v4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 130
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inherit-from-source="

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {p0, p4, v7}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_0
    const/4 p4, 0x2

    if-ne p7, v6, :cond_8

    return p4

    .line 138
    :cond_8
    iget-object v0, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 139
    const-string p1, "currentParams has bounds set, not overriding"

    new-array p2, v5, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_9
    if-eqz p5, :cond_a

    .line 143
    invoke-virtual {p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_a
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->hasOverrideBounds()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 144
    invoke-virtual {v2}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result p1

    if-eqz p1, :cond_b

    return v6

    .line 149
    :cond_b
    const-string p1, "current task has bounds set, not overriding"

    new-array p2, v5, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    .line 153
    :cond_c
    sget-object v0, Landroid/window/DesktopModeFlags;->INHERIT_TASK_BOUNDS_FOR_TRAMPOLINE_TASK_LAUNCHES:Landroid/window/DesktopModeFlags;

    invoke-virtual {v0}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v0

    const-string v7, "final desktop mode task bounds set to %s"

    if-eqz v0, :cond_d

    .line 155
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostVisibleFreeformActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 156
    invoke-virtual {p0, v0, p3, p1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->shouldInheritExistingTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 157
    const-string p1, "inheriting bounds from existing closing instance"

    new-array p2, v5, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iget-object p1, v4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 159
    iget-object p1, v4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v7, p1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    .line 165
    :cond_d
    new-instance v5, Lcom/android/server/wm/DesktopModeLaunchParamsModifier$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DesktopModeLaunchParamsModifier;)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->updateInitialBounds(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Ljava/util/function/Consumer;)V

    .line 167
    iget-object p1, v4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v7, p1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p5, :cond_e

    .line 168
    invoke-virtual {p5}, Landroid/app/ActivityOptions;->getFlexibleLaunchSize()Z

    move-result p0

    if-eqz p0, :cond_e

    .line 173
    invoke-virtual {p5}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p0

    iput p0, v4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    return v6

    :cond_e
    return p4

    .line 87
    :cond_f
    :goto_1
    const-string p1, "task null, skipping"

    new-array p2, v5, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public final checkSourceWindowModesCompatible(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z
    .locals 0

    .line 215
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isCompatibleDesktopWindowingMode(I)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 217
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isCompatibleDesktopWindowingMode(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget p1, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isCompatibleDesktopWindowingMode(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final initLogBuilder(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final isClosingExitingInstance(I)Z
    .locals 0

    .line 0
    const p0, 0x8000

    and-int/2addr p0, p1

    if-nez p0, :cond_1

    const/high16 p0, 0x8000000

    and-int/2addr p0, p1

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

.method public final isCompatibleDesktopWindowingMode(I)Z
    .locals 1

    .line 0
    const/4 p0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, p0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public isEnteringDesktopMode(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z
    .locals 1

    .line 193
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostFreeformActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->checkSourceWindowModesCompatible(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isRequestingFreeformWindowMode(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final isLaunchingNewSingleTask(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isRequestingFreeformWindowMode(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z
    .locals 0

    .line 202
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x5

    if-eqz p2, :cond_0

    .line 203
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p1

    if-eq p1, p0, :cond_2

    .line 204
    :cond_0
    invoke-virtual {p3}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onCalculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->initLogBuilder(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 69
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I

    move-result p1

    .line 71
    invoke-virtual {p0}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->outputLog()V

    return p1
.end method

.method public final outputLog()V
    .locals 0

    .line 0
    return-void
.end method

.method public final shouldInheritExistingTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-ne p1, v1, :cond_1

    iget p1, p2, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    .line 244
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isLaunchingNewSingleTask(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 245
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isClosingExitingInstance(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method
