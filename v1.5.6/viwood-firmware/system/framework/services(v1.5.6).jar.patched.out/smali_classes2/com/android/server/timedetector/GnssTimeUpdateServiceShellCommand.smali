.class public Lcom/android/server/timedetector/GnssTimeUpdateServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "GnssTimeUpdateServiceShellCommand.java"


# instance fields
.field public final mGnssTimeUpdateService:Lcom/android/server/timedetector/GnssTimeUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/GnssTimeUpdateService;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateServiceShellCommand;->mGnssTimeUpdateService:Lcom/android/server/timedetector/GnssTimeUpdateService;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 51
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string/jumbo v0, "start_gnss_listening"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/timedetector/GnssTimeUpdateServiceShellCommand;->runStartGnssListening()I

    move-result p0

    return p0
.end method

.method public onHelp()V
    .locals 3

    .line 68
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 69
    const-string v0, "gnss_time_update_service"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Network Time Update Service (%s) commands:\n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 v0, 0x0

    .line 70
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "  help\n"

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 71
    const-string v1, "    Print this help text.\n"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 72
    const-string/jumbo v1, "start_gnss_listening"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "  %s\n"

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 73
    const-string v1, "    Forces the service in to GNSS listening mode (if it isn\'t already).\n"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 74
    const-string v1, "    Prints true if the service is listening after this command.\n"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 75
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final runStartGnssListening()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateServiceShellCommand;->mGnssTimeUpdateService:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-virtual {v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->startGnssListening()Z

    move-result v0

    .line 62
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method
