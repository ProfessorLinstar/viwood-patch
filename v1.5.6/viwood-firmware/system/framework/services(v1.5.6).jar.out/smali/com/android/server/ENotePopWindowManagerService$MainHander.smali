.class public final Lcom/android/server/ENotePopWindowManagerService$MainHander;
.super Landroid/os/Handler;
.source "ENotePopWindowManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ENotePopWindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/ENotePopWindowManagerService;Landroid/os/Looper;)V
    .locals 0

    .line 1153
    iput-object p1, p0, Lcom/android/server/ENotePopWindowManagerService$MainHander;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    .line 1154
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: msg.what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ENotePopWindowManagerService_MainHander"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_9

    const/4 v0, 0x6

    if-eq p1, v0, :cond_8

    const-string v0, "false"

    const/16 v2, 0x12

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v2, :cond_5

    const/16 v2, 0xc

    if-eq p1, v2, :cond_4

    const/16 v2, 0xd

    if-eq p1, v2, :cond_3

    const/16 v2, 0x11

    packed-switch p1, :pswitch_data_0

    return-void

    .line 1215
    :pswitch_0
    const-string p1, "com.vivoods.powerGoToSleep"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    iget-object p1, p0, Lcom/android/server/ENotePopWindowManagerService$MainHander;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p1, v3}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$fputmHideDelayedGC(Lcom/android/server/ENotePopWindowManagerService;Z)V

    .line 1218
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService$MainHander;->resetOrientationChange()V

    return-void

    .line 1196
    :pswitch_1
    const-string p0, "MSG_WHAT_WINDOW_SHUTDOWN_SET_MODE."

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    invoke-static {}, Landroid/os/enote/ENoteSetting;->getInstance()Landroid/os/enote/ENoteSetting;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/enote/ENoteSetting;->setGlobalEpdMode(I)V

    return-void

    .line 1180
    :pswitch_2
    const-string p1, "com.vivoods.updateBatteryState"

    invoke-static {p1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_WHAT_WINDOW_SHOW_SET_MODE isUpdateBatteryState: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , mOrientationChangeShow= "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/ENotePopWindowManagerService$MainHander;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {v5}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$fgetmOrientationChangeShow(Lcom/android/server/ENotePopWindowManagerService;)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 1184
    iget-object p1, p0, Lcom/android/server/ENotePopWindowManagerService$MainHander;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p1}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$fgetmOrientationChangeShow(Lcom/android/server/ENotePopWindowManagerService;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/ENotePopWindowManagerService$MainHander;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p1}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$fgetmLastBatteryLevel(Lcom/android/server/ENotePopWindowManagerService;)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/ENotePopWindowManagerService$MainHander;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {v0}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$fgetmBatteryLevel(Lcom/android/server/ENotePopWindowManagerService;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/server/ENotePopWindowManagerService$MainHander;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p1}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$misChargingFull(Lcom/android/server/ENotePopWindowManagerService;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1185
    :cond_1
    invoke-static {}, Landroid/os/enote/ENoteSetting;->getInstance()Landroid/os/enote/ENoteSetting;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/enote/ENoteSetting;->setGlobalEpdMode(I)V

    .line 1188
    :cond_2
    invoke-static {}, Landroid/os/enote/ENoteSetting;->getInstance()Landroid/os/enote/ENoteSetting;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/os/enote/ENoteSetting;->setBrightness(II)V

    .line 1191
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService$MainHander;->resetOrientationChange()V

    .line 1192
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService$MainHander;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p0, v3}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$fputmSleepWallpaperShowed(Lcom/android/server/ENotePopWindowManagerService;Z)V

    return-void

    .line 1166
    :cond_3
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService$MainHander;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p0}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$mshowSleepPopupWindowLocked(Lcom/android/server/ENotePopWindowManagerService;)V

    return-void

    .line 1162
    :cond_4
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService$MainHander;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p0}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$mshowShutdownPopupWindowLocked(Lcom/android/server/ENotePopWindowManagerService;)V

    return-void

    .line 1222
    :cond_5
    const-string p1, "com.vivoods.screenTurnedOn"

    invoke-static {p1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1223
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SG_WHAT_WINDOW_UPDATE_GO_TO_SLEEP screenTurnedOn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_7

    .line 1225
    iget-object p1, p0, Lcom/android/server/ENotePopWindowManagerService$MainHander;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p1}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$fgetmPowerManager(Lcom/android/server/ENotePopWindowManagerService;)Landroid/os/PowerManager;

    move-result-object p1

    if-nez p1, :cond_6

    .line 1226
    const-string p0, "MSG_WHAT_WINDOW_UPDATE_GO_TO_SLEEP failed as PowerManager is null"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1229
    :cond_6
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService$MainHander;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p0}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$fgetmPowerManager(Lcom/android/server/ENotePopWindowManagerService;)Landroid/os/PowerManager;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 1231
    const-string p0, "com.vivoods.updateOrientationSleepPopup"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1233
    :cond_7
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService$MainHander;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p0}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$fgetmainHandler(Lcom/android/server/ENotePopWindowManagerService;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 1175
    :cond_8
    const-string p0, "MSG_WHAT_WINDOW_SHOW_NOTIFYALL do nothing."

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1170
    :cond_9
    iget-object p1, p0, Lcom/android/server/ENotePopWindowManagerService$MainHander;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p1}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$mhide(Lcom/android/server/ENotePopWindowManagerService;)V

    .line 1171
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService$MainHander;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p0}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$mhideSetMode(Lcom/android/server/ENotePopWindowManagerService;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final resetOrientationChange()V
    .locals 2

    .line 1246
    invoke-static {}, Landroid/os/enote/ENoteSetting;->getInstance()Landroid/os/enote/ENoteSetting;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/enote/ENoteSetting;->setEinkRefreshInterval(I)I

    .line 1247
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService$MainHander;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p0, v1}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$fputmOrientationChangeShow(Lcom/android/server/ENotePopWindowManagerService;Z)V

    return-void
.end method
