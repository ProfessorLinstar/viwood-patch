.class public Lcom/android/server/contextualsearch/ContextualSearchManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "ContextualSearchManagerShellCommand.java"


# instance fields
.field public final mService:Lcom/android/server/contextualsearch/ContextualSearchManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerShellCommand;->mService:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 5

    if-nez p1, :cond_0

    .line 35
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string/jumbo v1, "set"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string/jumbo v1, "ms"

    const/4 v2, 0x0

    const-string/jumbo v3, "temporary-package"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "token-duration"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 58
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerShellCommand;->mService:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->resetTokenValidDurationMs()V

    .line 59
    const-string p0, "ContextualSearchManagerService token duration reset."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 62
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 63
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerShellCommand;->mService:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->setTokenValidDurationMs(I)V

    .line 64
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContextualSearchManagerService temporarily set token duration to "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    .line 45
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerShellCommand;->mService:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->resetTemporaryPackage()V

    .line 46
    const-string p0, "ContextualSearchManagerService reset."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 49
    :cond_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 50
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerShellCommand;->mService:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->setTemporaryPackage(Ljava/lang/String;I)V

    .line 51
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContextualSearchManagerService temporarily set to "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return v2
.end method

.method public onHelp()V
    .locals 3

    .line 79
    const-string v0, "    To reset, call without any arguments."

    const-string v1, ""

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 80
    :try_start_0
    const-string v2, "ContextualSearchService commands:"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    const-string v2, "  help"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    const-string v2, "    Prints this help text."

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    const-string v2, "  set temporary-package [PACKAGE_NAME DURATION]"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    const-string v2, "    Temporarily (for DURATION ms) changes the Contextual Search implementation."

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    const-string v2, "  set token-duration [DURATION]"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    const-string v2, "    Changes the Contextual Search token duration to DURATION ms."

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_0

    .line 79
    :try_start_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
.end method
