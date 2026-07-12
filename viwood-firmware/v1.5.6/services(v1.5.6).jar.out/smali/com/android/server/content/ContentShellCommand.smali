.class public Lcom/android/server/content/ContentShellCommand;
.super Landroid/os/ShellCommand;
.source "ContentShellCommand.java"


# instance fields
.field public final mInterface:Landroid/content/IContentService;


# direct methods
.method public constructor <init>(Landroid/content/IContentService;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/server/content/ContentShellCommand;->mInterface:Landroid/content/IContentService;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 3

    if-nez p1, :cond_0

    .line 35
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 38
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 40
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, -0x2f770c6b

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "reset-today-stats"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    invoke-virtual {p0}, Lcom/android/server/content/ContentShellCommand;->runResetTodayStats()I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 44
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 47
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remote exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public onHelp()V
    .locals 1

    .line 59
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 60
    const-string v0, "Content service commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    const-string v0, "  reset-today-stats"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    const-string v0, "    Reset 1-day sync stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final runResetTodayStats()I
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/server/content/ContentShellCommand;->mInterface:Landroid/content/IContentService;

    invoke-interface {p0}, Landroid/content/IContentService;->resetTodayStats()V

    const/4 p0, 0x0

    return p0
.end method
