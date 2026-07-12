.class public Lcom/android/server/alarm/AlarmManagerService$ShellCmd;
.super Landroid/os/ShellCommand;
.source "AlarmManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    .line 5654
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/AlarmManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    return-void
.end method


# virtual methods
.method public getBinderService()Landroid/app/IAlarmManager;
    .locals 0

    .line 5657
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmService(Lcom/android/server/alarm/AlarmManagerService;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object p0

    return-object p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 7

    if-nez p1, :cond_0

    .line 5663
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 5666
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    .line 5668
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, -0x7e64175c

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v3, :cond_3

    const v3, 0x519f2558

    if-eq v2, v3, :cond_2

    const v3, 0x7895dd04

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "set-timezone"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v5

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    const-string/jumbo v2, "set-time"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v6

    goto :goto_1

    :cond_3
    const-string v2, "get-config-version"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_7

    if-eq v2, v5, :cond_6

    if-eq v2, v4, :cond_5

    .line 5681
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 5677
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;->getBinderService()Landroid/app/IAlarmManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IAlarmManager;->getConfigVersion()I

    move-result p0

    .line 5678
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(I)V

    return v6

    .line 5673
    :cond_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 5674
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;->getBinderService()Landroid/app/IAlarmManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/app/IAlarmManager;->setTimeZone(Ljava/lang/String;)V

    return v6

    .line 5670
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 5671
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;->getBinderService()Landroid/app/IAlarmManager;

    move-result-object p0

    invoke-interface {p0, v2, v3}, Landroid/app/IAlarmManager;->setTime(J)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_8

    return v6

    :cond_8
    return v1

    .line 5684
    :goto_2
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return v1
.end method

.method public onHelp()V
    .locals 1

    .line 5691
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 5692
    const-string v0, "Alarm manager service (alarm) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5693
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5694
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5695
    const-string v0, "  set-time TIME"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5696
    const-string v0, "    Set the system clock time to TIME where TIME is milliseconds"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5697
    const-string v0, "    since the Epoch."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5698
    const-string v0, "  set-timezone TZ"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5699
    const-string v0, "    Set the system timezone to TZ where TZ is an Olson id."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5700
    const-string v0, "  get-config-version"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5701
    const-string v0, "    Returns an integer denoting the version of device_config keys the service is sync\'ed to. As long as this returns the same version, the values of the config are guaranteed to remain the same."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
