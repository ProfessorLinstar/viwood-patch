.class public abstract Lcom/android/server/wm/WindowTracing;
.super Ljava/lang/Object;
.source "WindowTracing.java"


# instance fields
.field public final mChoreographer:Landroid/view/Choreographer;

.field public final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$PCVd_OZa7AR1VUIpYvVBTxPVKdE(Lcom/android/server/wm/WindowTracing;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowTracing;->lambda$new$0(J)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;Lcom/android/server/wm/WindowManagerGlobalLock;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/server/wm/WindowTracing$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowTracing$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowTracing;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowTracing;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/wm/WindowTracing;->mScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    iput-object p2, p0, Lcom/android/server/wm/WindowTracing;->mChoreographer:Landroid/view/Choreographer;

    .line 68
    iput-object p1, p0, Lcom/android/server/wm/WindowTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 69
    iput-object p3, p0, Lcom/android/server/wm/WindowTracing;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-void
.end method

.method public static createDefaultAndStartLooper(Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;)Lcom/android/server/wm/WindowTracing;
    .locals 1

    .line 60
    new-instance v0, Lcom/android/server/wm/WindowTracingLegacy;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/WindowTracingLegacy;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;)V

    return-object v0
.end method


# virtual methods
.method public dumpToProto(Landroid/util/proto/ProtoOutputStream;ILjava/lang/String;J)V
    .locals 5

    .line 163
    const-string v0, "traceStateLocked"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-wide v3, 0x10600000001L

    const/4 v0, 0x0

    .line 165
    :try_start_0
    invoke-virtual {p1, v3, v4, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide p4, 0x10900000002L

    .line 166
    invoke-virtual {p1, p4, p5, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide p4, 0x10b00000003L

    .line 168
    invoke-virtual {p1, p4, p5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p4

    .line 169
    iget-object v3, p0, Lcom/android/server/wm/WindowTracing;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/WindowTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/WindowManagerService;->dumpDebugLocked(Landroid/util/proto/ProtoOutputStream;I)V

    .line 171
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 172
    invoke-virtual {p1, p4, p5}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    const-string p1, "onFrame"

    if-ne p3, p1, :cond_0

    .line 178
    iget-object p0, p0, Lcom/android/server/wm/WindowTracing;->mScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 180
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 171
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 174
    :goto_0
    :try_start_5
    const-string p2, "WindowTracing"

    const-string p4, "Exception while tracing state"

    invoke-static {p2, p4, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 176
    const-string p1, "onFrame"

    if-ne p3, p1, :cond_1

    .line 178
    iget-object p0, p0, Lcom/android/server/wm/WindowTracing;->mScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 180
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 176
    :goto_1
    const-string p2, "onFrame"

    if-ne p3, p2, :cond_2

    .line 178
    iget-object p0, p0, Lcom/android/server/wm/WindowTracing;->mScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 180
    :cond_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 181
    throw p1
.end method

.method public abstract getStatus()Ljava/lang/String;
.end method

.method public abstract isEnabled()Z
.end method

.method public final synthetic lambda$new$0(J)V
    .locals 0

    .line 52
    const-string p1, "onFrame"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowTracing;->log(Ljava/lang/String;)V

    return-void
.end method

.method public abstract log(Ljava/lang/String;)V
.end method

.method public logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 185
    const-string p0, "WindowTracing"

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    :cond_0
    return-void
.end method

.method public logState(Ljava/lang/String;)V
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->shouldLogOnTransaction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowTracing;->log(Ljava/lang/String;)V

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->shouldLogOnFrame()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->schedule()V

    :cond_2
    :goto_0
    return-void
.end method

.method public abstract onShellCommand(Landroid/os/ShellCommand;)I
.end method

.method public saveForBugreport(Ljava/io/PrintWriter;)V
    .locals 1

    .line 103
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "Error: Tracing is not supported on user builds."

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    .line 112
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowTracing;->saveForBugreportInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public abstract saveForBugreportInternal(Ljava/io/PrintWriter;)V
.end method

.method public final schedule()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/android/server/wm/WindowTracing;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public abstract shouldLogOnFrame()Z
.end method

.method public abstract shouldLogOnTransaction()Z
.end method

.method public startTrace(Ljava/io/PrintWriter;)V
    .locals 1

    .line 73
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "Error: Tracing is not supported on user builds."

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    .line 80
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowTracing;->startTraceInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public abstract startTraceInternal(Ljava/io/PrintWriter;)V
.end method

.method public stopTrace(Ljava/io/PrintWriter;)V
    .locals 1

    .line 84
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "Error: Tracing is not supported on user builds."

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    .line 91
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowTracing;->stopTraceInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public abstract stopTraceInternal(Ljava/io/PrintWriter;)V
.end method
