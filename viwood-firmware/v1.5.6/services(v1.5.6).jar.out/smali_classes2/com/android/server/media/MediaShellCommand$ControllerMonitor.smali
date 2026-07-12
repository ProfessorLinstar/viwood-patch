.class public Lcom/android/server/media/MediaShellCommand$ControllerMonitor;
.super Ljava/lang/Object;
.source "MediaShellCommand.java"


# instance fields
.field public final mController:Landroid/media/session/MediaController;

.field public final mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

.field public final synthetic this$0:Lcom/android/server/media/MediaShellCommand;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmController(Lcom/android/server/media/MediaShellCommand$ControllerMonitor;)Landroid/media/session/MediaController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmControllerCallback(Lcom/android/server/media/MediaShellCommand$ControllerMonitor;)Lcom/android/server/media/MediaShellCommand$ControllerCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/media/MediaShellCommand;Landroid/media/session/MediaController;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p2, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    .line 266
    new-instance p2, Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    invoke-direct {p2, p1}, Lcom/android/server/media/MediaShellCommand$ControllerCallback;-><init>(Lcom/android/server/media/MediaShellCommand;)V

    iput-object p2, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    return-void
.end method


# virtual methods
.method public final dispatchKeyCode(I)V
    .locals 13

    .line 339
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 340
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v11, 0x0

    const/16 v12, 0x101

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object p1, v0

    .line 342
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    invoke-virtual {v1, p1}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    .line 346
    iget-object p1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    invoke-virtual {p1, v0}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 348
    :catch_0
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {p0}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmErrorWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to dispatch "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public printUsageMessage()V
    .locals 3

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v0}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V2Monitoring session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "...  available commands: play, pause, next, previous"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v0}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error trying to monitor session!"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    :goto_0
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {p0}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "(q)uit: finish monitoring"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 6

    .line 280
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->printUsageMessage()V

    .line 281
    new-instance v0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor$1;

    const-string v1, "MediaCb"

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor$1;-><init>(Lcom/android/server/media/MediaShellCommand$ControllerMonitor;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 294
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v2}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmInput(Lcom/android/server/media/MediaShellCommand;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 295
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 299
    :goto_0
    iget-object v1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v1}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 300
    iget-object v1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v1}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmErrorWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 301
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 303
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    .line 305
    :cond_1
    const-string/jumbo v3, "q"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v3, "quit"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_5

    .line 307
    :cond_2
    const-string/jumbo v3, "play"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v1, 0x7e

    .line 308
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->dispatchKeyCode(I)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_7

    :catch_0
    move-exception v1

    goto :goto_6

    .line 309
    :cond_3
    const-string/jumbo v3, "pause"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v1, 0x7f

    .line 310
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->dispatchKeyCode(I)V

    goto :goto_1

    .line 311
    :cond_4
    const-string/jumbo v3, "next"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v1, 0x57

    .line 312
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->dispatchKeyCode(I)V

    goto :goto_1

    .line 313
    :cond_5
    const-string/jumbo v3, "previous"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v1, 0x58

    .line 314
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->dispatchKeyCode(I)V

    goto :goto_1

    .line 316
    :cond_6
    iget-object v3, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v3}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmErrorWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    const/4 v1, 0x1

    .line 319
    :goto_2
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_7

    .line 321
    :try_start_1
    iget-object v1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v1}, Lcom/android/server/media/MediaShellCommand;->-$$Nest$fgetmWriter(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_4

    .line 323
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->printUsageMessage()V

    .line 324
    monitor-exit p0

    goto/16 :goto_0

    :goto_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 329
    :cond_8
    :goto_5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 331
    :try_start_3
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    .line 327
    :goto_6
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 329
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 331
    :try_start_5
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    return-void

    .line 329
    :goto_7
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 331
    :try_start_6
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 335
    :catch_2
    throw v1
.end method
