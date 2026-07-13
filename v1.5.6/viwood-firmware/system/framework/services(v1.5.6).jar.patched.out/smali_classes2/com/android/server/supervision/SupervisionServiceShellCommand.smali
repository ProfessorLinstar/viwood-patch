.class public Lcom/android/server/supervision/SupervisionServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "SupervisionServiceShellCommand.java"


# instance fields
.field public final mService:Lcom/android/server/supervision/SupervisionService;


# direct methods
.method public constructor <init>(Lcom/android/server/supervision/SupervisionService;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/server/supervision/SupervisionServiceShellCommand;->mService:Lcom/android/server/supervision/SupervisionService;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 34
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string v0, "enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "disable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionServiceShellCommand;->setEnabled(Z)I

    move-result p0

    return p0

    :cond_2
    const/4 p1, 0x1

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionServiceShellCommand;->setEnabled(Z)I

    move-result p0

    return p0
.end method

.method public onHelp()V
    .locals 1

    .line 52
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 53
    const-string v0, "Supervision service (supervision) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    const-string v0, "      Prints this help text"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    const-string v0, "  enable <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    const-string v0, "      Enables supervision for the given user."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    const-string v0, "  disable <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    const-string v0, "      Disables supervision for the given user."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final setEnabled(Z)I
    .locals 1

    .line 45
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 46
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionServiceShellCommand;->mService:Lcom/android/server/supervision/SupervisionService;

    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mInternal:Landroid/app/supervision/SupervisionManagerInternal;

    invoke-virtual {p0, v0, p1}, Landroid/app/supervision/SupervisionManagerInternal;->setSupervisionEnabledForUser(IZ)V

    const/4 p0, 0x0

    return p0
.end method
