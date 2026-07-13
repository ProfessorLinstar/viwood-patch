.class public final Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "VoiceInteractionManagerServiceShellCommand.java"


# instance fields
.field public final mService:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->mService:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    return-void
.end method

.method public static handleError(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Exception;)I
    .locals 2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error calling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceInteractionManager"

    invoke-static {v1, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    const-string v0, "Error calling %s: %s\n"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 3

    if-nez p1, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "restart-detection"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "show"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "hide"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "set-debug-hotword-logging"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 62
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 58
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->requestRestartDetection(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 56
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->requestDisable(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 52
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->requestShow(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 54
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->requestHide(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 60
    :pswitch_4
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->setDebugHotwordLogging(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4163e63c -> :sswitch_4
        0x30dd42 -> :sswitch_3
        0x35dafd -> :sswitch_2
        0x639e22e8 -> :sswitch_1
        0x66744447 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 2

    .line 68
    const-string v0, ""

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 69
    :try_start_0
    const-string v1, "VoiceInteraction Service (voiceinteraction) commands:"

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
    const-string v1, "  show"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    const-string v1, "    Shows a session for the active service"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    const-string v1, "  hide"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    const-string v1, "    Hides the current session"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    const-string v1, "  disable [true|false]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    const-string v1, "    Temporarily disable (when true) service"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    const-string v1, "  restart-detection"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const-string v1, "    Force a restart of a hotword detection service"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    const-string v1, "  set-debug-hotword-logging [true|false]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const-string v1, "    Temporarily enable or disable debug logging for hotword result."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const-string v1, "    The debug logging will be reset after one hour from last enable."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
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

.method public final requestDisable(Ljava/io/PrintWriter;)I
    .locals 3

    .line 147
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestDisable(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VoiceInteractionManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :try_start_0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->mService:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setDisabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    .line 152
    const-string/jumbo v0, "requestDisable()"

    invoke-static {p1, v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->handleError(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Exception;)I

    move-result p0

    return p0
.end method

.method public final requestHide(Ljava/io/PrintWriter;)I
    .locals 2

    .line 137
    const-string v0, "VoiceInteractionManager"

    const-string/jumbo v1, "requestHide()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :try_start_0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->mService:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->hideCurrentSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    .line 141
    invoke-static {p1, v1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->handleError(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Exception;)I

    move-result p0

    return p0
.end method

.method public final requestRestartDetection(Ljava/io/PrintWriter;)I
    .locals 2

    .line 158
    const-string v0, "VoiceInteractionManager"

    const-string/jumbo v1, "requestRestartDetection()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :try_start_0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->mService:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->forceRestartHotwordDetector()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    .line 162
    invoke-static {p1, v1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->handleError(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Exception;)I

    move-result p0

    return p0
.end method

.method public final requestShow(Ljava/io/PrintWriter;)I
    .locals 9

    .line 93
    const-string v0, "VoiceInteractionManager"

    const-string/jumbo v1, "requestShow()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 95
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 97
    new-instance v7, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand$1;

    invoke-direct {v7, p0, p1, v2, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;Ljava/io/PrintWriter;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    .line 116
    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 117
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->mService:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->showSessionForActiveService(Landroid/os/Bundle;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 121
    const-string/jumbo p0, "showSessionForActiveService() returned false"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 125
    :cond_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 126
    const-string p0, "Callback not called in %d ms\n"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 130
    :goto_0
    const-string/jumbo v0, "showSessionForActiveService()"

    invoke-static {p1, v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->handleError(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Exception;)I

    move-result p0

    return p0
.end method

.method public final setDebugHotwordLogging(Ljava/io/PrintWriter;)I
    .locals 3

    .line 168
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDebugHotwordLogging(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VoiceInteractionManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :try_start_0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->mService:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setDebugHotwordLogging(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    .line 173
    const-string/jumbo v0, "setDebugHotwordLogging()"

    invoke-static {p1, v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->handleError(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Exception;)I

    move-result p0

    return p0
.end method
