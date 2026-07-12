.class public final Lcom/android/server/am/ProcessList$KillHandler;
.super Landroid/os/Handler;
.source "ProcessList.java"


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 848
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 853
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xfa0

    if-eq v0, v1, :cond_2

    const/16 v1, 0xfa1

    if-eq v0, v1, :cond_0

    .line 869
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 860
    :cond_0
    invoke-static {}, Lcom/android/server/am/ProcessList;->-$$Nest$sfgetsLmkdConnection()Lcom/android/server/am/LmkdConnection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/LmkdConnection;->connect()Z

    move-result p1

    if-nez p1, :cond_1

    .line 861
    const-string p1, "ActivityManager"

    const-string v0, "Failed to connect to lmkd, retry after 1000 ms"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void

    .line 855
    :cond_2
    const-string/jumbo p0, "killProcessGroup"

    const-wide/16 v0, 0x40

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 856
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, p1}, Landroid/os/Process;->killProcessGroup(II)I

    .line 857
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method
