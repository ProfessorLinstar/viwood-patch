.class public Lcom/android/server/wm/TaskChangeNotificationController;
.super Ljava/lang/Object;
.source "TaskChangeNotificationController.java"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mLocalTaskStackListeners:Ljava/util/ArrayList;

.field public final mNotifyActivityDismissingDockedTask:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyActivityLaunchOnSecondaryDisplayRerouted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyActivityRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyBackPressedOnTaskRoot:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyLockTaskModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyOnActivityRotation:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyRecentTaskRemovedForAddTask:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskDisplayChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskFocusChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskListFrozen:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskListUpdated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskMovedToBack:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskRemovalStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskSnapshotChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskSnapshotChangedRemote:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskSnapshotInvalidated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

.field public final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;


# direct methods
.method public static synthetic $r8$lambda$3efeevBcFcEyR-6HMS-AzpBtZg8(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1

    .line 144
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4eLcfeE5EsykOVynmzu3fgpLtiE(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 2

    .line 156
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/window/TaskSnapshot;

    const/16 v1, 0x10

    .line 157
    invoke-virtual {v0, v1}, Landroid/window/TaskSnapshot;->addReference(I)V

    .line 158
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1, v0}, Landroid/app/ITaskStackListener;->onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B9YMzj4Sx7x6o6GellcYz2j42C4(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 122
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onActivityUnpinned()V

    return-void
.end method

.method public static synthetic $r8$lambda$ERSwJdfirclxo_SxwopIJjviC-4(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 3

    .line 117
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->sendingUid:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, v1, v2, p1}, Landroid/app/ITaskStackListener;->onActivityPinned(Ljava/lang/String;III)V

    return-void
.end method

.method public static synthetic $r8$lambda$Far2sAT8OX74Uk8OvCXTZTEXQY0(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1

    .line 166
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onTaskDisplayChanged(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$JFI_F_hpE-kLZOK3Tx2KyHgWbCk(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 101
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LF-U8QTnVFa2t1XdtsotWKGWJcQ(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1

    .line 186
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onTaskRequestedOrientationChanged(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$LuO8UQe6O3yGvjwiF8c7unoxvm0(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 178
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onRecentTaskRemovedForAddTask(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NW5zZAkpJyS6Ig7DBkUclrq7o6E(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 170
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onRecentTaskListUpdated()V

    return-void
.end method

.method public static synthetic $r8$lambda$SzO5O63VCJS3xdIl0vSIMTp9t5U(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 105
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UIO9IjTxPd3zzG6wdFibHMsY7g4(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1

    .line 89
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/ComponentName;

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onTaskCreated(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wk7V2a46XjNuYA1wEeCJbqFuseg(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 113
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XnL-keZKaVwst4Q0DM1DZhp59bY(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 85
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onTaskStackChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$Yh2qVtKQXkA0n6eTAWdlt9I5bKk(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1

    .line 182
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onTaskFocusChanged(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$YtXFdKOJROtNGmU0MWIvvR9x4qE(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 194
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onTaskMovedToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZcHKF3Wd6aesC4NxELVljM1oRv8(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1

    .line 109
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onActivityRequestedOrientationChanged(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$ah1JsV-rMqKWq8lKZtNZ807zrV4(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 162
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onTaskSnapshotInvalidated(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$b5m5f-NmiMSK8k33c8h6brlvbYk(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 174
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onRecentTaskListFrozenChanged(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$dNAMwBiTlsfPwJwgNsJh6c1qPoE(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1

    .line 140
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$e8qpshHEGuPLoKkKOFxn_qSZ944(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 190
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onActivityRotation(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$k4E8J8DdV86uqZN5ysVsMzpxnHQ(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 136
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onActivityDismissingDockedTask()V

    return-void
.end method

.method public static synthetic $r8$lambda$lEAXUrdoyen4zn-XN1vwdoKgZCI(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 198
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onLockTaskModeChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$oJcrjS8ku_Fs2Otv51YQ4YBhiJA(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 5

    .line 126
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 127
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-eqz p1, :cond_2

    move v2, v3

    :cond_2
    invoke-interface {p0, v0, v1, v4, v2}, Landroid/app/ITaskStackListener;->onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$pEEKl3x7xNfwpK3bQNjwUvOrDNs(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 93
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onTaskRemoved(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$q7SXkjHOPaMiTDqO9DXDmijw3uk(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 2

    .line 132
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, v1, p1}, Landroid/app/ITaskStackListener;->onActivityForcedResizable(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$ql1_4BzTGQYBNhxtqcl4510uH8w(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1

    .line 152
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/window/TaskSnapshot;

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qoDZrtY2jOJf4Ahc6jYayChKO5Q(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 97
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wkk0PabK880VZx6HrUI23jWZ2II(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1

    .line 148
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyActivityDismissingDockedTask(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityDismissingDockedTask:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyActivityForcedResizable(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyActivityLaunchOnSecondaryDisplayFailed(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyActivityLaunchOnSecondaryDisplayRerouted(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayRerouted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyActivityPinned(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyActivityRequestedOrientationChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyActivityRestartAttempt(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyActivityUnpinned(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyBackPressedOnTaskRoot(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyBackPressedOnTaskRoot:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyLockTaskModeChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyLockTaskModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyOnActivityRotation(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyOnActivityRotation:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyRecentTaskRemovedForAddTask(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyRecentTaskRemovedForAddTask:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskCreated(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskDescriptionChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskDisplayChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDisplayChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskFocusChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskFocusChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskListFrozen(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListFrozen:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskListUpdated(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListUpdated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskMovedToBack(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToBack:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskMovedToFront(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskProfileLocked(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskRemovalStarted(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemovalStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskRemoved(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskRequestedOrientationChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskSnapshotChangedRemote(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotChangedRemote:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskSnapshotInvalidated(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotInvalidated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskStackChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/os/Handler;)V
    .locals 1

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 88
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda11;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 92
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda20;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 96
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda21;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 100
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda22;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 104
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda23;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyBackPressedOnTaskRoot:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 108
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda24;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 112
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda25;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemovalStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 116
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda26;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 121
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda27;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 125
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 131
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda2;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 135
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda3;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityDismissingDockedTask:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 139
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda4;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 143
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda5;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayRerouted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 147
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda6;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 151
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda7;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 155
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda8;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotChangedRemote:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 161
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda9;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotInvalidated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 165
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda10;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDisplayChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 169
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda12;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListUpdated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 173
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda13;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListFrozen:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 177
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda14;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyRecentTaskRemovedForAddTask:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 181
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda15;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskFocusChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 185
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda16;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 189
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda17;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyOnActivityRotation:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 193
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda18;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToBack:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 197
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda19;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyLockTaskModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 304
    iput-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 305
    new-instance p1, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;-><init>(Lcom/android/server/wm/TaskChangeNotificationController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 349
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ITaskStackListener;

    invoke-interface {p1, v2, p2}, Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;->accept(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 354
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 337
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/ITaskStackListener;

    invoke-interface {p1, v1, p2}, Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;->accept(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 342
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public notifyActivityForcedResizable(IILjava/lang/String;)V
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 412
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 414
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 415
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyActivityLaunchOnSecondaryDisplayFailed(Landroid/app/TaskInfo;I)V
    .locals 3

    .line 419
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 420
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 423
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 424
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyActivityPinned(Lcom/android/server/wm/ActivityRecord;)V
    .locals 5

    .line 369
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 370
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    .line 371
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTaskId()I

    move-result v3

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 370
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 372
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iput p1, v0, Landroid/os/Message;->sendingUid:I

    .line 373
    iget-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 374
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyActivityRequestedOrientationChanged(II)V
    .locals 2

    .line 465
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 467
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 468
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 392
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 393
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 394
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 395
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 396
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 397
    iget-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 399
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 400
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyActivityUnpinned()V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 380
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 381
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 382
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyLockTaskModeChanged(I)V
    .locals 3

    .line 595
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 597
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyLockTaskModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 598
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyOnActivityRotation(I)V
    .locals 3

    .line 579
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 581
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyOnActivityRotation:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 582
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyRecentTaskRemovedForAddTask(I)V
    .locals 3

    .line 554
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 557
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyRecentTaskRemovedForAddTask:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 558
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskCreated(ILandroid/content/ComponentName;)V
    .locals 3

    .line 437
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 439
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 440
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskDescriptionChanged(Landroid/app/TaskInfo;)V
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 459
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 460
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskDisplayChanged(II)V
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 531
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDisplayChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 532
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskFocusChanged(IZ)V
    .locals 2

    .line 563
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 565
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskFocusChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 566
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskListFrozen(Z)V
    .locals 3

    .line 546
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0x17

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 548
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListFrozen:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 549
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskListUpdated()V
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 540
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListUpdated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 541
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskMovedToBack(Landroid/app/TaskInfo;)V
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 590
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToBack:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 591
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskMovedToFront(Landroid/app/TaskInfo;)V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 452
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 453
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 3

    .line 487
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 489
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 490
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 478
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemovalStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 479
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskRemoved(I)V
    .locals 3

    .line 444
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 446
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 447
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskRequestedOrientationChanged(II)V
    .locals 2

    .line 571
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 573
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 574
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V
    .locals 3

    const/4 v0, 0x1

    .line 497
    invoke-virtual {p2, v0}, Landroid/window/TaskSnapshot;->addReference(I)V

    .line 498
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 500
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 501
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskSnapshotInvalidated(I)V
    .locals 3

    .line 508
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 510
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotInvalidated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 511
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskStackChanged()V
    .locals 3

    .line 359
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityMetricsLogger;->logWindowState()V

    .line 360
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 361
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 364
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    .locals 2

    .line 309
    instance-of v0, p1, Landroid/os/Binder;

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 312
    instance-of v1, p1, Landroid/app/TaskStackListener;

    if-eqz v1, :cond_0

    .line 313
    move-object v1, p1

    check-cast v1, Landroid/app/TaskStackListener;

    invoke-virtual {v1}, Landroid/app/TaskStackListener;->setIsLocal()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 315
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    if-eqz p1, :cond_3

    .line 319
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_3
    return-void
.end method

.method public unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    .locals 1

    .line 324
    instance-of v0, p1, Landroid/os/Binder;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 326
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 327
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    if-eqz p1, :cond_1

    .line 329
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_1
    return-void
.end method
