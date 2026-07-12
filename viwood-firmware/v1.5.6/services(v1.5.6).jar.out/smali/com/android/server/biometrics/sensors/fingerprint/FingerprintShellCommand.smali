.class public Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;
.super Landroid/os/ShellCommand;
.source "FingerprintShellCommand.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->mService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    return-void
.end method


# virtual methods
.method public final doHelp()I
    .locals 0

    .line 76
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->onHelp()V

    const/4 p0, 0x0

    return p0
.end method

.method public final doNotify()I
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->mService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->sendFingerprintReEnrollNotification()V

    const/4 p0, 0x0

    return p0
.end method

.method public final doSimulateVhalFingerDown()I
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->mService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->simulateVhalFingerDown()V

    const/4 p0, 0x0

    return p0
.end method

.method public final doSync()I
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->mService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->syncEnrollmentsNow()V

    const/4 p0, 0x0

    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->onHelp()V

    return v0

    :cond_0
    const/4 v1, -0x1

    .line 43
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x3

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "notification"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :sswitch_1
    const-string/jumbo v2, "sync"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :sswitch_2
    const-string v2, "help"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_3
    const-string v2, "fingerdown"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_5

    if-eq v2, v0, :cond_4

    if-eq v2, v3, :cond_3

    if-eq v2, v4, :cond_2

    .line 53
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 51
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->doNotify()I

    move-result p0

    return p0

    .line 49
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->doSimulateVhalFingerDown()I

    move-result p0

    return p0

    .line 47
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->doSync()I

    move-result p0

    return p0

    .line 45
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->doHelp()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 56
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3c793475 -> :sswitch_3
        0x30cf41 -> :sswitch_2
        0x361a9b -> :sswitch_1
        0x237a88eb -> :sswitch_0
    .end sparse-switch
.end method

.method public onHelp()V
    .locals 1

    .line 63
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 64
    const-string v0, "Fingerprint Service commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    const-string v0, "      Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    const-string v0, "  sync"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    const-string v0, "      Sync enrollments now (virtualized sensors only)."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    const-string v0, "  fingerdown"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    const-string v0, "      Simulate finger down event (virtualized sensors only)."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    const-string v0, "  notification"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    const-string v0, "     Sends a Fingerprint re-enrollment notification"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
