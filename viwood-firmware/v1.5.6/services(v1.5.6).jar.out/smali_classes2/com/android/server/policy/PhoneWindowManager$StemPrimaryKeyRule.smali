.class public final Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;
.super Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.source "PhoneWindowManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public static synthetic $r8$lambda$Ipp8VL7RVf6_VLMzK05AtllNhzs(Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->lambda$onKeyUp$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$JVHy5f_3UKtAAlxz-tLRtoanuO8(Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->lambda$onMultiPress$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$JoYv1zuZQq9ZUPbSv7Frj_uHDhQ(Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->lambda$onLongPress$1(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$nSwvshhJVDdt9yjlaj0c6KqKPsA(Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->lambda$onPress$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 2898
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/16 p1, 0x108

    .line 2899
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getMaxMultiPressCount()I
    .locals 0

    .line 2909
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mgetMaxMultiPressStemPrimaryCount(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$onKeyUp$3()V
    .locals 3

    .line 2997
    const-string v0, "StemPrimaryKeyRule: executing deferred onKeyUp"

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    .line 3008
    invoke-interface {v2}, Landroid/app/IActivityManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fputmFocusedTaskInfoOnStemPrimarySingleKeyUp(Lcom/android/server/policy/PhoneWindowManager;Landroid/app/ActivityTaskManager$RootTaskInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3010
    const-string v2, "StemPrimaryKeyRule: onKeyUp: error while getting focused task info."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3018
    :goto_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mstemPrimaryPress(Lcom/android/server/policy/PhoneWindowManager;I)V

    return-void
.end method

.method public final synthetic lambda$onLongPress$1(J)V
    .locals 0

    .line 2932
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mstemPrimaryLongPress(Lcom/android/server/policy/PhoneWindowManager;J)V

    return-void
.end method

.method public final synthetic lambda$onMultiPress$2(I)V
    .locals 0

    .line 2952
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mstemPrimaryPress(Lcom/android/server/policy/PhoneWindowManager;I)V

    return-void
.end method

.method public final synthetic lambda$onPress$0()V
    .locals 1

    .line 2919
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mstemPrimaryPress(Lcom/android/server/policy/PhoneWindowManager;I)V

    return-void
.end method

.method public onKeyUp(JIIII)V
    .locals 0

    const/4 p4, 0x1

    if-ne p3, p4, :cond_0

    .line 2986
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p4, p3, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2987
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getMostRecentTaskFromBackground()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fputmBackgroundRecentTaskInfoOnStemPrimarySingleKeyUp(Lcom/android/server/policy/PhoneWindowManager;Landroid/app/ActivityManager$RecentTaskInfo;)V

    .line 2989
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 p4, 0x0

    invoke-static {p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fputmFocusedTaskInfoOnStemPrimarySingleKeyUp(Lcom/android/server/policy/PhoneWindowManager;Landroid/app/ActivityTaskManager$RootTaskInfo;)V

    .line 2991
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->shouldHandleStemPrimaryEarlyShortPress()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2993
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmDeferredKeyActionExecutor(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/DeferredKeyActionExecutor;

    move-result-object p3

    new-instance p4, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda3;

    invoke-direct {p4, p0}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;)V

    const/16 p0, 0x108

    invoke-virtual {p3, p0, p1, p2, p4}, Lcom/android/server/policy/DeferredKeyActionExecutor;->queueKeyAction(IJLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onLongPress(J)V
    .locals 2

    .line 2924
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmLongPressOnStemPrimaryBehavior(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2926
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mstemPrimaryLongPress(Lcom/android/server/policy/PhoneWindowManager;J)V

    return-void

    .line 2929
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmDeferredKeyActionExecutor(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/DeferredKeyActionExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;J)V

    const/16 p0, 0x108

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/android/server/policy/DeferredKeyActionExecutor;->queueKeyAction(IJLjava/lang/Runnable;)V

    return-void
.end method

.method public onMultiPress(JII)V
    .locals 2

    const/4 p4, 0x3

    const/16 v0, 0x108

    if-ne p3, p4, :cond_0

    .line 2940
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p4}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmTriplePressOnStemPrimaryBehavior(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result p4

    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    .line 2946
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmDeferredKeyActionExecutor(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/DeferredKeyActionExecutor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/policy/DeferredKeyActionExecutor;->cancelQueuedAction(I)V

    .line 2947
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->undoEarlySinglePress()V

    .line 2948
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0, p3}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mstemPrimaryPress(Lcom/android/server/policy/PhoneWindowManager;I)V

    return-void

    .line 2951
    :cond_0
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p4}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmDeferredKeyActionExecutor(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/DeferredKeyActionExecutor;

    move-result-object p4

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p3}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;I)V

    invoke-virtual {p4, v0, p1, p2, v1}, Lcom/android/server/policy/DeferredKeyActionExecutor;->queueKeyAction(IJLjava/lang/Runnable;)V

    return-void
.end method

.method public onPress(JI)V
    .locals 1

    .line 2914
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->shouldHandleStemPrimaryEarlyShortPress()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 2918
    :cond_0
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmDeferredKeyActionExecutor(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/DeferredKeyActionExecutor;

    move-result-object p3

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;)V

    const/16 p0, 0x108

    invoke-virtual {p3, p0, p1, p2, v0}, Lcom/android/server/policy/DeferredKeyActionExecutor;->queueKeyAction(IJLjava/lang/Runnable;)V

    return-void
.end method

.method public final shouldHandleStemPrimaryEarlyShortPress()Z
    .locals 1

    .line 3026
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnStemPrimary:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmShortPressOnStemPrimaryBehavior(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public supportLongPress()Z
    .locals 0

    .line 2904
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mhasLongPressOnStemPrimaryBehavior(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result p0

    return p0
.end method

.method public final undoEarlySinglePress()V
    .locals 3

    .line 2961
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->shouldHandleStemPrimaryEarlyShortPress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmFocusedTaskInfoOnStemPrimarySingleKeyUp(Lcom/android/server/policy/PhoneWindowManager;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2964
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmFocusedTaskInfoOnStemPrimarySingleKeyUp(Lcom/android/server/policy/PhoneWindowManager;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2967
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmFocusedTaskInfoOnStemPrimarySingleKeyUp(Lcom/android/server/policy/PhoneWindowManager;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p0

    iget p0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " from recents"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "WindowManager"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
