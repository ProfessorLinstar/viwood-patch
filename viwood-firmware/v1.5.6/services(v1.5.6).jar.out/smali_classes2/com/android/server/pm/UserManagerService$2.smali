.class public Lcom/android/server/pm/UserManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "UserManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$2;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 641
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->-$$Nest$smisAutoLockForPrivateSpaceEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 642
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 643
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$2;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->maybeScheduleAlarmToAutoLockPrivateSpace()V

    return-void

    .line 644
    :cond_0
    const-string p1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 645
    const-string p1, "UserManagerService"

    const-string p2, "SCREEN_ON broadcast received, removing pending alarms to auto-lock private space"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$2;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mcancelPendingAutoLockAlarms(Lcom/android/server/pm/UserManagerService;)V

    :cond_1
    return-void
.end method
