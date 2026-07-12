.class public Lcom/android/server/translation/TranslationManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "TranslationManagerServiceShellCommand.java"


# instance fields
.field public final mService:Lcom/android/server/translation/TranslationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/translation/TranslationManagerService;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceShellCommand;->mService:Lcom/android/server/translation/TranslationManagerService;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 2

    if-nez p1, :cond_0

    .line 34
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 37
    const-string/jumbo v1, "set"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/server/translation/TranslationManagerServiceShellCommand;->requestSet(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 40
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public onHelp()V
    .locals 2

    .line 68
    const-string v0, ""

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 69
    :try_start_0
    const-string v1, "Translation Service (translation) commands:"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    const-string v1, "  help"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    const-string v1, "    Prints this help text."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    const-string v1, "  set temporary-service USER_ID [COMPONENT_NAME DURATION]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    const-string v1, "    Temporarily (for DURATION ms) changes the service implementation."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    const-string v1, "    To reset, call with just the USER_ID argument."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_0

    .line 68
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

.method public final requestSet(Ljava/io/PrintWriter;)I
    .locals 2

    .line 44
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string/jumbo v1, "temporary-service"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/translation/TranslationManagerServiceShellCommand;->setTemporaryService(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 48
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid set: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final setTemporaryService(Ljava/io/PrintWriter;)I
    .locals 4

    .line 53
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 54
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 56
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceShellCommand;->mService:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->resetTemporaryService(I)V

    return v2

    .line 59
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 60
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceShellCommand;->mService:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/infra/AbstractMasterSystemService;->setTemporaryService(ILjava/lang/String;I)V

    .line 61
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TranslationService temporarily set to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method
