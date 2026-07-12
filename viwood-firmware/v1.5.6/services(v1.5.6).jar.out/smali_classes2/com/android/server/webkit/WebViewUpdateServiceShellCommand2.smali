.class public Lcom/android/server/webkit/WebViewUpdateServiceShellCommand2;
.super Landroid/os/ShellCommand;
.source "WebViewUpdateServiceShellCommand2.java"


# instance fields
.field public final mInterface:Landroid/webkit/IWebViewUpdateService;


# direct methods
.method public constructor <init>(Landroid/webkit/IWebViewUpdateService;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand2;->mInterface:Landroid/webkit/IWebViewUpdateService;

    return-void
.end method


# virtual methods
.method public helpSetWebViewImplementation()V
    .locals 1

    .line 76
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 77
    const-string v0, "  set-webview-implementation PACKAGE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    const-string v0, "    Set the WebView implementation to the specified package."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

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

    const v2, -0x52550e2f

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "set-webview-implementation"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand2;->setWebViewImplementation()I

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
    .locals 2

    .line 83
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 84
    const-string v1, "WebView updater commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand2;->helpSetWebViewImplementation()V

    .line 89
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final setWebViewImplementation()I
    .locals 4

    .line 53
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 56
    const-string v1, "Failed to switch, no PACKAGE provided."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand2;->helpSetWebViewImplementation()V

    return v2

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand2;->mInterface:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {p0, v1}, Landroid/webkit/IWebViewUpdateService;->changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 62
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    const-string p0, "Success"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 66
    :cond_1
    const-string v3, "Failed to switch to %s, the WebView implementation is now provided by %s."

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 67
    invoke-static {v3, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method
