.class public Lcom/android/server/dreams/DreamShellCommand;
.super Landroid/os/ShellCommand;
.source "DreamShellCommand.java"


# instance fields
.field public final mService:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/server/dreams/DreamShellCommand;->mService:Lcom/android/server/dreams/DreamManagerService;

    return-void
.end method


# virtual methods
.method public final enforceCallerIsRoot()V
    .locals 1

    .line 74
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 75
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Must be root to call Dream shell commands"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 4

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCommand:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DreamShellCommand"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 47
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, -0xaf33596

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x57d5fa0a

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "start-dreaming"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-string/jumbo v1, "stop-dreaming"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v0

    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    .line 55
    invoke-super {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 52
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamShellCommand;->enforceCallerIsRoot()V

    .line 53
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamShellCommand;->stopDreaming()I

    move-result p0

    return p0

    .line 49
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamShellCommand;->enforceCallerIsRoot()V

    .line 50
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamShellCommand;->startDreaming()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 58
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return v0
.end method

.method public onHelp()V
    .locals 1

    .line 81
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 82
    const-string v0, "Dream manager (dreams) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    const-string v0, "      Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    const-string v0, "  start-dreaming"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const-string v0, "      Start the currently configured dream."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const-string v0, "  stop-dreaming"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    const-string v0, "      Stops any active dream"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final startDreaming()I
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/server/dreams/DreamShellCommand;->mService:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->requestStartDreamFromShell()V

    const/4 p0, 0x0

    return p0
.end method

.method public final stopDreaming()I
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/server/dreams/DreamShellCommand;->mService:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->requestStopDreamFromShell()V

    const/4 p0, 0x0

    return p0
.end method
