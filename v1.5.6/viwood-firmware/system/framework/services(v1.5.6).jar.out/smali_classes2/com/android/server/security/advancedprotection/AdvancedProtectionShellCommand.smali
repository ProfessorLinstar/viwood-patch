.class public Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;
.super Landroid/os/ShellCommand;
.source "AdvancedProtectionShellCommand.java"


# instance fields
.field public mService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;->mService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    return-void
.end method


# virtual methods
.method public final dumpHelp(Ljava/io/PrintWriter;)V
    .locals 0

    .line 66
    const-string p0, "Advanced Protection Mode commands:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    const-string p0, "  help"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    const-string p0, "      Print this help text."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    const-string p0, "  set-protection-enabled [true|false]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    const-string p0, "  is-protection-enabled"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final isProtectionEnabled(Ljava/io/PrintWriter;)I
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;->mService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->isAdvancedProtectionEnabled()Z

    move-result p0

    .line 87
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final isUsbDataProtectedEnabled(Ljava/io/PrintWriter;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 8

    if-nez p1, :cond_0

    .line 36
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 38
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    .line 40
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "set-protection-enabled"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v7

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :sswitch_1
    const-string v2, "is-protection-enabled"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v6

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "set-usb-data-protection-enabled"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v5

    goto :goto_1

    :sswitch_3
    const-string v2, "help"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v4

    goto :goto_1

    :sswitch_4
    const-string v2, "is-usb-data-protection-enabled"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v7, :cond_5

    if-eq p1, v6, :cond_4

    if-eq p1, v5, :cond_3

    if-eq p1, v3, :cond_2

    goto :goto_3

    .line 51
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;->isUsbDataProtectedEnabled(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 49
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;->setUsbDataProtectedEnabled()I

    move-result p0

    return p0

    .line 47
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;->isProtectionEnabled(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 45
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;->setProtectionEnabled()I

    move-result p0

    return p0

    .line 42
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;->onHelp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    .line 54
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x76fb381c -> :sswitch_4
        0x30cf41 -> :sswitch_3
        0x1433f31c -> :sswitch_2
        0x3be2cdd0 -> :sswitch_1
        0x5f33a398 -> :sswitch_0
    .end sparse-switch
.end method

.method public onHelp()V
    .locals 1

    .line 61
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final setProtectionEnabled()I
    .locals 1

    .line 79
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;->mService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->setAdvancedProtectionEnabled(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final setUsbDataProtectedEnabled()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
