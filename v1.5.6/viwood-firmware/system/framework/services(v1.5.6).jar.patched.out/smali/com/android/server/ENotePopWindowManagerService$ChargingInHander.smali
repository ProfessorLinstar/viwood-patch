.class public final Lcom/android/server/ENotePopWindowManagerService$ChargingInHander;
.super Landroid/os/Handler;
.source "ENotePopWindowManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ENotePopWindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/ENotePopWindowManagerService;Landroid/os/Looper;)V
    .locals 0

    .line 1255
    iput-object p1, p0, Lcom/android/server/ENotePopWindowManagerService$ChargingInHander;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    .line 1256
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChargingInHander handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ENotePWMS_ChargingInHander"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xe

    if-eq p1, v0, :cond_5

    const/16 v0, 0xf

    if-eq p1, v0, :cond_4

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1272
    :cond_0
    iget-object p1, p0, Lcom/android/server/ENotePopWindowManagerService$ChargingInHander;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p1}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$misChargingFull(Lcom/android/server/ENotePopWindowManagerService;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1277
    :cond_1
    iget-object p1, p0, Lcom/android/server/ENotePopWindowManagerService$ChargingInHander;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p1}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$fgetmPluggedInResInited(Lcom/android/server/ENotePopWindowManagerService;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1278
    const-string p1, "MSG_WHAT_WINDOW_FASTCHARGING_ON: the pluggedInView is not inflated, try to inflate it again."

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    iget-object p1, p0, Lcom/android/server/ENotePopWindowManagerService$ChargingInHander;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p1}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$minitEnotePopWindowRes(Lcom/android/server/ENotePopWindowManagerService;)V

    .line 1280
    iget-object p1, p0, Lcom/android/server/ENotePopWindowManagerService$ChargingInHander;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p1}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$minitPluggedInPopupWindow(Lcom/android/server/ENotePopWindowManagerService;)V

    .line 1282
    :cond_2
    iget-object p1, p0, Lcom/android/server/ENotePopWindowManagerService$ChargingInHander;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p1}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$fgetmPluggedInView(Lcom/android/server/ENotePopWindowManagerService;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1284
    :try_start_0
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService$ChargingInHander;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p0}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$fgetmPluggedInView(Lcom/android/server/ENotePopWindowManagerService;)Landroid/view/View;

    move-result-object p0

    const p1, 0x10203a9

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const p1, 0x10805b9

    .line 1285
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1287
    const-string p1, "PluggedInView set image failed"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-void

    .line 1268
    :cond_4
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService$ChargingInHander;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p0}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$mdissmissPluggedInPopupWindowIfShowing(Lcom/android/server/ENotePopWindowManagerService;)V

    return-void

    .line 1264
    :cond_5
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService$ChargingInHander;->this$0:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p0}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$mshowPluggedInPopupWindow(Lcom/android/server/ENotePopWindowManagerService;)V

    return-void
.end method
