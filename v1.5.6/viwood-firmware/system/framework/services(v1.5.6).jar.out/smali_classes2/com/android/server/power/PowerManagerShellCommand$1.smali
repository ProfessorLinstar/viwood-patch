.class public Lcom/android/server/power/PowerManagerShellCommand$1;
.super Landroid/app/IAlarmListener$Stub;
.source "PowerManagerShellCommand.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerShellCommand;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerShellCommand;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/server/power/PowerManagerShellCommand$1;->this$0:Lcom/android/server/power/PowerManagerShellCommand;

    invoke-direct {p0}, Landroid/app/IAlarmListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public doAlarm(Landroid/app/IAlarmCompleteListener;)V
    .locals 6

    .line 61
    iget-object p1, p0, Lcom/android/server/power/PowerManagerShellCommand$1;->this$0:Lcom/android/server/power/PowerManagerShellCommand;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerShellCommand;->-$$Nest$fgetmService(Lcom/android/server/power/PowerManagerShellCommand;)Lcom/android/server/power/PowerManagerService$BinderService;

    move-result-object v0

    .line 62
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerShellCommand$1;->this$0:Lcom/android/server/power/PowerManagerShellCommand;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerShellCommand;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerShellCommand;)Landroid/content/Context;

    move-result-object p0

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x2

    .line 61
    const-string v4, "PowerManagerShellCommand"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService$BinderService;->wakeUp(JILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
