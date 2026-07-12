.class public final Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;
.super Lcom/android/server/ENotePopWindowManagerService$ENotePopWindowManagerServiceInternal;
.source "ENotePopWindowManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ENotePopWindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$3Vn1a0UnpL82m5KgccGkQpUkGRw(Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;->lambda$onConfigurationChanged$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$b1FKp7F3oB0iKHW6ZYXCMpGR8B4(Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;->lambda$onConfigurationChanged$1()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/ENotePopWindowManagerService;)V
    .locals 0

    .line 1083
    iput-object p1, p0, Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/ENotePopWindowManagerService$ENotePopWindowManagerServiceInternal;-><init>(Lcom/android/server/ENotePopWindowManagerService;)V

    return-void
.end method


# virtual methods
.method public dissmissPluggedInPopupWindowIfShowing()V
    .locals 2

    .line 1095
    const-string v0, "ENotePopWindowManagerService"

    const-string v1, "LocalServiceImpl:: dissmissPluggedInPopupWindowIfShowing "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p0}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$fgetchargingInHander(Lcom/android/server/ENotePopWindowManagerService;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public isSleepWallpaperShowed()Z
    .locals 0

    .line 1145
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p0}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$misSleepWallpaperShowed(Lcom/android/server/ENotePopWindowManagerService;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$onConfigurationChanged$0()V
    .locals 3

    .line 1119
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$fputmOrientationChangeShow(Lcom/android/server/ENotePopWindowManagerService;Z)V

    .line 1123
    invoke-static {}, Landroid/os/enote/ENoteSetting;->getInstance()Landroid/os/enote/ENoteSetting;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/enote/ENoteSetting;->setBrightness(II)V

    .line 1125
    const-string v0, "com.vivoods.updateOrientationSleepPopup"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/ENotePopWindowManagerService;->showSleepPopupWindow()V

    .line 1128
    const-string v0, "com.vivoods.powerGoToSleep"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p0}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$fgetmainHandler(Lcom/android/server/ENotePopWindowManagerService;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x12

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final synthetic lambda$onConfigurationChanged$1()V
    .locals 0

    .line 1133
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p0}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$monSystemPropertiesChangedIfNeed(Lcom/android/server/ENotePopWindowManagerService;)V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 5

    .line 1108
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {v0}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$fgetmPowerManager(Lcom/android/server/ENotePopWindowManagerService;)Landroid/os/PowerManager;

    move-result-object v0

    const-string v1, "ENotePopWindowManagerService"

    if-nez v0, :cond_0

    .line 1109
    const-string/jumbo p0, "onConfigurationChanged failed as PowerManager is null"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1112
    :cond_0
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {v0}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$fgetmContext(Lcom/android/server/ENotePopWindowManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1113
    iget-object v2, p0, Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/ENotePopWindowManagerService;->mBootCompleted:Z

    if-eqz v2, :cond_2

    .line 1114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocalServiceImpl:: onConfigurationChanged orientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    iget-object v1, p0, Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {v1}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$mloadSleepBitmap(Lcom/android/server/ENotePopWindowManagerService;)V

    .line 1117
    iget-object v1, p0, Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {v1}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$fgetmSleepWallpaperShowing(Lcom/android/server/ENotePopWindowManagerService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {v1}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$fgetmLastOrientation(Lcom/android/server/ENotePopWindowManagerService;)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 1118
    iget-object v1, p0, Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {v1}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$fgetmainHandler(Lcom/android/server/ENotePopWindowManagerService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1132
    :cond_1
    iget-object v1, p0, Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {v1}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$fgetmainHandler(Lcom/android/server/ENotePopWindowManagerService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1136
    :cond_2
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p0, v0}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$fputmLastOrientation(Lcom/android/server/ENotePopWindowManagerService;I)V

    return-void
.end method

.method public onKeyguardShowing(Z)V
    .locals 0

    .line 1141
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p0, p1}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$monKeyguardShowing(Lcom/android/server/ENotePopWindowManagerService;Z)V

    return-void
.end method

.method public showPluggedInPopupWindowAutoDissmiss()V
    .locals 4

    .line 1087
    const-string v0, "ENotePopWindowManagerService"

    const-string v1, "LocalServiceImpl:: showPluggedInPopupWindow "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {v0}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$fgetchargingInHander(Lcom/android/server/ENotePopWindowManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1089
    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {v0}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$fgetchargingInHander(Lcom/android/server/ENotePopWindowManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1090
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p0}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$fgetchargingInHander(Lcom/android/server/ENotePopWindowManagerService;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v2, 0x9c4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public updateBatteryState(IIZ)V
    .locals 2

    .line 1101
    const-string v0, "ENotePopWindowManagerService"

    const-string v1, "LocalServiceImpl:: updateBatteryState "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService$LocalServiceImpl;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/ENotePopWindowManagerService;->updateBatteryState(IIZ)V

    return-void
.end method
