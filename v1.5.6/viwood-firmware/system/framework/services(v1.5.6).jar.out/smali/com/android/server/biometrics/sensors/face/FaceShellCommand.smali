.class public Lcom/android/server/biometrics/sensors/face/FaceShellCommand;
.super Landroid/os/ShellCommand;
.source "FaceShellCommand.java"


# instance fields
.field public final mService:Lcom/android/server/biometrics/sensors/face/FaceService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/FaceService;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceShellCommand;->mService:Lcom/android/server/biometrics/sensors/face/FaceService;

    return-void
.end method


# virtual methods
.method public final doHelp()I
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/FaceShellCommand;->onHelp()V

    const/4 p0, 0x0

    return p0
.end method

.method public final doNotify()I
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceShellCommand;->mService:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->sendFaceReEnrollNotification()V

    const/4 p0, 0x0

    return p0
.end method

.method public final doSync()I
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceShellCommand;->mService:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->syncEnrollmentsNow()V

    const/4 p0, 0x0

    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/FaceShellCommand;->onHelp()V

    return v0

    :cond_0
    const/4 v1, -0x1

    .line 40
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, 0x30cf41

    const/4 v4, 0x2

    if-eq v2, v3, :cond_3

    const v3, 0x361a9b

    if-eq v2, v3, :cond_2

    const v3, 0x237a88eb

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "notification"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    const-string/jumbo v2, "sync"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    goto :goto_1

    :cond_3
    const-string v2, "help"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_7

    if-eq v2, v0, :cond_6

    if-eq v2, v4, :cond_5

    .line 48
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

    .line 46
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/FaceShellCommand;->doNotify()I

    move-result p0

    return p0

    .line 44
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/FaceShellCommand;->doSync()I

    move-result p0

    return p0

    .line 42
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/FaceShellCommand;->doHelp()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 51
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
.end method

.method public onHelp()V
    .locals 1

    .line 58
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 59
    const-string v0, "Face Service commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    const-string v0, "      Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    const-string v0, "  sync"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    const-string v0, "      Sync enrollments now (virtualized sensors only)."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    const-string v0, "  notification"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    const-string v0, "     Sends a Face re-enrollment notification"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
