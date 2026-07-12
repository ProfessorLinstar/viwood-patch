.class public Lcom/android/server/EnoteDeviceCheckService$5;
.super Landroid/os/CountDownTimer;
.source "EnoteDeviceCheckService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/EnoteDeviceCheckService;

.field public final synthetic val$powerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Lcom/android/server/EnoteDeviceCheckService;JJLandroid/os/PowerManager;)V
    .locals 0

    .line 648
    iput-object p1, p0, Lcom/android/server/EnoteDeviceCheckService$5;->this$0:Lcom/android/server/EnoteDeviceCheckService;

    iput-object p6, p0, Lcom/android/server/EnoteDeviceCheckService$5;->val$powerManager:Landroid/os/PowerManager;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 667
    const-string v0, "EnoteDeviceCheckService"

    const-string v1, "Count down finished"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService$5;->this$0:Lcom/android/server/EnoteDeviceCheckService;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/EnoteDeviceCheckService;->-$$Nest$msendTaskToWorkerThread(Lcom/android/server/EnoteDeviceCheckService;ILjava/lang/Object;)V

    .line 669
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService$5;->this$0:Lcom/android/server/EnoteDeviceCheckService;

    invoke-static {v0}, Lcom/android/server/EnoteDeviceCheckService;->-$$Nest$fgetmWakeLock(Lcom/android/server/EnoteDeviceCheckService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService$5;->this$0:Lcom/android/server/EnoteDeviceCheckService;

    invoke-static {v0}, Lcom/android/server/EnoteDeviceCheckService;->-$$Nest$fgetmWakeLock(Lcom/android/server/EnoteDeviceCheckService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService$5;->this$0:Lcom/android/server/EnoteDeviceCheckService;

    invoke-static {v0}, Lcom/android/server/EnoteDeviceCheckService;->-$$Nest$fgetmWakeLock(Lcom/android/server/EnoteDeviceCheckService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 671
    iget-object p0, p0, Lcom/android/server/EnoteDeviceCheckService$5;->this$0:Lcom/android/server/EnoteDeviceCheckService;

    invoke-static {p0, v2}, Lcom/android/server/EnoteDeviceCheckService;->-$$Nest$fputmWakeLock(Lcom/android/server/EnoteDeviceCheckService;Landroid/os/PowerManager$WakeLock;)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 652
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService$5;->this$0:Lcom/android/server/EnoteDeviceCheckService;

    invoke-static {v0}, Lcom/android/server/EnoteDeviceCheckService;->-$$Nest$fgetmBlockDialogView(Lcom/android/server/EnoteDeviceCheckService;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService$5;->this$0:Lcom/android/server/EnoteDeviceCheckService;

    invoke-static {v0}, Lcom/android/server/EnoteDeviceCheckService;->-$$Nest$fgetmBlockDialogView(Lcom/android/server/EnoteDeviceCheckService;)Landroid/view/View;

    move-result-object v0

    const v1, 0x10205d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 654
    iget-object v1, p0, Lcom/android/server/EnoteDeviceCheckService$5;->this$0:Lcom/android/server/EnoteDeviceCheckService;

    invoke-static {v1}, Lcom/android/server/EnoteDeviceCheckService;->-$$Nest$fgetmContext(Lcom/android/server/EnoteDeviceCheckService;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10409d1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    .line 655
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 654
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 656
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-wide/16 v0, 0x1388

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x1770

    cmp-long p1, p1, v0

    if-gtz p1, :cond_1

    .line 660
    const-string p1, "EnoteDeviceCheckService"

    const-string p2, "Count down timer wakeUp"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object p0, p0, Lcom/android/server/EnoteDeviceCheckService$5;->val$powerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    const/4 v0, 0x1

    const-string/jumbo v1, "updateBatteryState"

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    :cond_1
    return-void
.end method
