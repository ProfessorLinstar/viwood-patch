.class public Lcom/android/server/camera/CameraServiceProxy$2;
.super Landroid/hardware/ICameraServiceProxy$Stub;
.source "CameraServiceProxy.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/camera/CameraServiceProxy;)V
    .locals 0

    .line 725
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-direct {p0}, Landroid/hardware/ICameraServiceProxy$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoframingOverride(Ljava/lang/String;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getRotateAndCropOverride(Ljava/lang/String;II)I
    .locals 10

    .line 728
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    const-string v2, "CameraService_proxy"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    .line 729
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Calling UID: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t match expected  camera service UID!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 739
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, v3, p3}, Landroid/app/IActivityTaskManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_9

    .line 746
    invoke-virtual {p3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 747
    invoke-virtual {p3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 748
    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 750
    new-instance p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;

    invoke-direct {p3}, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;-><init>()V

    .line 751
    iget v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    iput v4, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->frontTaskId:I

    .line 752
    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    iput-boolean v5, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isResizeable:Z

    .line 754
    iget v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->displayId:I

    iput v5, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->displayId:I

    .line 755
    iget v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    iput v5, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->userId:I

    .line 756
    iget v4, v4, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 757
    invoke-static {v4}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v4

    iput-boolean v4, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationLandscape:Z

    .line 759
    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 760
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v0

    iput-boolean v0, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationPortrait:Z

    :goto_1
    move-object v6, p3

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    goto :goto_1

    :goto_2
    if-nez v6, :cond_4

    .line 767
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Recent tasks don\'t include camera client package name: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 780
    :cond_4
    iget p3, v6, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->userId:I

    .line 782
    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p3

    const-wide/32 v4, 0xb476b84

    .line 780
    invoke-static {v4, v5, p1, p3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 783
    const-string p0, "OVERRIDE_CAMERA_ROTATE_AND_CROP_DEFAULTS enabled!"

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 787
    :cond_5
    iget p3, v6, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->userId:I

    .line 789
    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p3

    const-wide/32 v4, 0xb6a427e

    .line 787
    invoke-static {v4, v5, p1, p3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 790
    const-string p3, "OVERRIDE_CAMERA_RESIZABLE_AND_SDK_CHECK enabled!"

    invoke-static {v2, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v1

    goto :goto_3

    :cond_6
    move v9, v3

    .line 794
    :goto_3
    iget-object p3, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {p3}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$fgetmContext(Lcom/android/server/camera/CameraServiceProxy;)Landroid/content/Context;

    move-result-object p3

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/display/DisplayManager;

    if-eqz p3, :cond_8

    .line 797
    iget v0, v6, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->displayId:I

    invoke-virtual {p3, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p3

    if-nez p3, :cond_7

    .line 799
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid display id: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v6, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->displayId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 803
    :cond_7
    invoke-virtual {p3}, Landroid/view/Display;->getRotation()I

    move-result v7

    .line 809
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {p0}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$fgetmContext(Lcom/android/server/camera/CameraServiceProxy;)Landroid/content/Context;

    move-result-object v4

    move-object v5, p1

    move v8, p2

    invoke-static/range {v4 .. v9}, Lcom/android/server/camera/CameraServiceProxy;->getCropRotateScale(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/camera/CameraServiceProxy$TaskInfo;IIZ)I

    move-result p0

    return p0

    .line 805
    :cond_8
    const-string p0, "Failed to query display manager!"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 772
    :cond_9
    const-string p0, "Recent task list is empty!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 742
    :catch_0
    const-string p0, "Failed to query recent tasks!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public isCameraDisabled(I)Z
    .locals 5

    .line 880
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    const-string v2, "CameraService_proxy"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    .line 881
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Calling UID: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t match expected camera service UID!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 885
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 887
    :try_start_0
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {p0}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$fgetmContext(Lcom/android/server/camera/CameraServiceProxy;)Landroid/content/Context;

    move-result-object p0

    const-class v4, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-nez p0, :cond_1

    .line 889
    const-string p0, "Failed to get the device policy manager service"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 899
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 893
    :try_start_1
    invoke-virtual {p0, v2, p1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 899
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catch_0
    move-exception p0

    .line 895
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 899
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 900
    throw p0
.end method

.method public notifyCameraState(Landroid/hardware/CameraSessionStats;)V
    .locals 2

    .line 835
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    if-eq v0, v1, :cond_0

    .line 836
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Calling UID: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t match expected  camera service UID!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraService_proxy"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 840
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/CameraSessionStats;->getNewCameraState()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$smcameraStateToString(I)Ljava/lang/String;

    .line 841
    invoke-virtual {p1}, Landroid/hardware/CameraSessionStats;->getFacing()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$smcameraFacingToString(I)Ljava/lang/String;

    .line 849
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$mupdateActivityCount(Lcom/android/server/camera/CameraServiceProxy;Landroid/hardware/CameraSessionStats;)V

    return-void
.end method

.method public notifyFeatureCombinationStats(Landroid/hardware/CameraFeatureCombinationStats;)V
    .locals 2

    .line 857
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    if-eq v0, v1, :cond_0

    .line 858
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Calling UID: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t match expected  camera service UID!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraService_proxy"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 875
    :cond_0
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$mupdateFeatureCombinationQuery(Lcom/android/server/camera/CameraServiceProxy;Landroid/hardware/CameraFeatureCombinationStats;)V

    return-void
.end method

.method public notifyWatchdog(IZ)V
    .locals 0

    .line 905
    invoke-static {p1, p2}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$smdumpStackTraces(IZ)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 912
    new-instance v0, Lcom/android/server/camera/CameraServiceProxy$2$CSPShellCmd;

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-direct {v0, v1}, Lcom/android/server/camera/CameraServiceProxy$2$CSPShellCmd;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 913
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public pingForUserUpdate()V
    .locals 2

    .line 824
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    if-eq v0, v1, :cond_0

    .line 825
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Calling UID: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " doesn\'t match expected  camera service UID!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraService_proxy"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$mnotifySwitchWithRetries(Lcom/android/server/camera/CameraServiceProxy;I)V

    .line 830
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {p0, v1}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$mnotifyDeviceStateWithRetries(Lcom/android/server/camera/CameraServiceProxy;I)V

    return-void
.end method
