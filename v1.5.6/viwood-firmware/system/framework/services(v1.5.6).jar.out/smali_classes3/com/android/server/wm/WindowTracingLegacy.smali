.class public Lcom/android/server/wm/WindowTracingLegacy;
.super Lcom/android/server/wm/WindowTracing;
.source "WindowTracingLegacy.java"


# instance fields
.field public final mBuffer:Lcom/android/internal/util/TraceBuffer;

.field public mEnabled:Z

.field public final mEnabledLock:Ljava/lang/Object;

.field public volatile mEnabledLockFree:Z

.field public mLogLevel:I

.field public mLogOnFrame:Z

.field public final mTraceFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;)V
    .locals 6

    .line 66
    new-instance v1, Ljava/io/File;

    const-string v0, "/data/misc/wmtrace/wm_trace.winscope"

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    const/high16 v5, 0xa00000

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowTracingLegacy;-><init>(Ljava/io/File;Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;Lcom/android/server/wm/WindowManagerGlobalLock;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;Lcom/android/server/wm/WindowManagerGlobalLock;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/wm/WindowTracing;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;Lcom/android/server/wm/WindowManagerGlobalLock;)V

    .line 55
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabledLock:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 62
    iput p2, p0, Lcom/android/server/wm/WindowTracingLegacy;->mLogLevel:I

    const/4 p2, 0x0

    .line 63
    iput-boolean p2, p0, Lcom/android/server/wm/WindowTracingLegacy;->mLogOnFrame:Z

    .line 74
    iput-object p1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mTraceFile:Ljava/io/File;

    .line 75
    new-instance p1, Lcom/android/internal/util/TraceBuffer;

    invoke-direct {p1, p5}, Lcom/android/internal/util/TraceBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracingLegacy;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Enabled"

    goto :goto_0

    :cond_0
    const-string v1, "Disabled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nLog level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mLogLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 195
    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->getStatus()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 114
    iget-boolean p0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabledLockFree:Z

    return p0
.end method

.method public log(Ljava/lang/String;)V
    .locals 8

    .line 242
    :try_start_0
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v2, 0x20b00000002L

    .line 243
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 244
    iget v2, p0, Lcom/android/server/wm/WindowTracingLegacy;->mLogLevel:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowTracing;->dumpToProto(Landroid/util/proto/ProtoOutputStream;ILjava/lang/String;J)V

    .line 245
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 246
    iget-object p0, v0, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0, v1}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 248
    const-string p1, "WindowTracing"

    const-string v0, "Exception while tracing state"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onShellCommand(Landroid/os/ShellCommand;)I
    .locals 7

    const/4 v0, 0x2

    .line 119
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 120
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_0
    move v6, v5

    goto/16 :goto_1

    :sswitch_0
    const-string v6, "transaction"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x7

    goto :goto_1

    :sswitch_1
    const-string v6, "start"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x6

    goto :goto_1

    :sswitch_2
    const-string v6, "level"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x5

    goto :goto_1

    :sswitch_3
    const-string v6, "frame"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x4

    goto :goto_1

    :sswitch_4
    const-string v6, "stop"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x3

    goto :goto_1

    :sswitch_5
    const-string v6, "size"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    :cond_5
    move v6, v0

    goto :goto_1

    :sswitch_6
    const-string v6, "save-for-bugreport"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_0

    :cond_6
    move v6, v3

    goto :goto_1

    :sswitch_7
    const-string v6, "status"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_0

    :cond_7
    move v6, v4

    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 169
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown command: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    const-string p0, "Window manager trace options:"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    const-string p0, "  start: Start logging"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    const-string p0, "  stop: Stop logging"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    const-string p0, "  save-for-bugreport: Save logging data to file if it\'s running."

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    const-string p0, "  frame: Log trace once per frame"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    const-string p0, "  transaction: Log each transaction"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    const-string p0, "  size: Set the maximum log size (in KB)"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    const-string p0, "  status: Print trace status"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    const-string p0, "  level [lvl]: Set the log level between"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    const-string p0, "    lvl may be one of:"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    const-string p0, "      critical: Only visible windows with reduced information"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    const-string p0, "      trim: All windows with reduced"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    const-string p0, "      all: All window and information"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    .line 139
    :pswitch_0
    invoke-virtual {p0, v4, v1}, Lcom/android/server/wm/WindowTracingLegacy;->setLogFrequency(ZLjava/io/PrintWriter;)V

    .line 140
    iget-object p0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    return v4

    .line 123
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowTracing;->startTrace(Ljava/io/PrintWriter;)V

    return v4

    .line 143
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    goto :goto_2

    :sswitch_8
    const-string v2, "critical"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    move v5, v0

    goto :goto_2

    :sswitch_9
    const-string v2, "trim"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    move v5, v3

    goto :goto_2

    :sswitch_a
    const-string v2, "all"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_2

    :cond_a
    move v5, v4

    :goto_2
    packed-switch v5, :pswitch_data_1

    .line 158
    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/WindowTracingLegacy;->setLogLevel(ILjava/io/PrintWriter;)V

    goto :goto_3

    .line 154
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowTracingLegacy;->setLogLevel(ILjava/io/PrintWriter;)V

    goto :goto_3

    .line 150
    :pswitch_4
    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/WindowTracingLegacy;->setLogLevel(ILjava/io/PrintWriter;)V

    goto :goto_3

    .line 146
    :pswitch_5
    invoke-virtual {p0, v4, v1}, Lcom/android/server/wm/WindowTracingLegacy;->setLogLevel(ILjava/io/PrintWriter;)V

    .line 162
    :goto_3
    iget-object p0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    return v4

    .line 135
    :pswitch_6
    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/WindowTracingLegacy;->setLogFrequency(ZLjava/io/PrintWriter;)V

    .line 136
    iget-object p0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    return v4

    .line 126
    :pswitch_7
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowTracing;->stopTrace(Ljava/io/PrintWriter;)V

    return v4

    .line 165
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x400

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowTracingLegacy;->setBufferCapacity(ILjava/io/PrintWriter;)V

    .line 166
    iget-object p0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    return v4

    .line 129
    :pswitch_9
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowTracing;->saveForBugreport(Ljava/io/PrintWriter;)V

    return v4

    .line 132
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracingLegacy;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3532300e -> :sswitch_7
        -0x174ab7ac -> :sswitch_6
        0x35e001 -> :sswitch_5
        0x360802 -> :sswitch_4
        0x5d2a96d -> :sswitch_3
        0x6219b84 -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x7fa0d2de -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x179a1 -> :sswitch_a
        0x367422 -> :sswitch_9
        0x745b779f -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public saveForBugreportInternal(Ljava/io/PrintWriter;)V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabled:Z

    if-nez v1, :cond_0

    .line 227
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 229
    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabledLockFree:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabled:Z

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop tracing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowTracingLegacy;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Waiting for traces to flush."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracingLegacy;->writeTraceToFileLocked()V

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trace written to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowTracingLegacy;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start tracing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowTracingLegacy;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 234
    iget-object p1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p1}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    const/4 p1, 0x1

    .line 235
    iput-boolean p1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabledLockFree:Z

    iput-boolean p1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabled:Z

    .line 236
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setBufferCapacity(ILjava/io/PrintWriter;)V
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting window tracing buffer capacity to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 109
    iget-object p0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/TraceBuffer;->setCapacity(I)V

    return-void
.end method

.method public setLogFrequency(ZLjava/io/PrintWriter;)V
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting window tracing log frequency to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 102
    const-string v1, "frame"

    goto :goto_0

    :cond_0
    const-string v1, "transaction"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 103
    iput-boolean p1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mLogOnFrame:Z

    return-void
.end method

.method public setLogLevel(ILjava/io/PrintWriter;)V
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting window tracing log level to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 81
    iput p1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mLogLevel:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/high16 p1, 0x500000

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowTracingLegacy;->setBufferCapacity(ILjava/io/PrintWriter;)V

    return-void

    :cond_1
    const/high16 p1, 0xa00000

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowTracingLegacy;->setBufferCapacity(ILjava/io/PrintWriter;)V

    return-void

    :cond_2
    const/high16 p1, 0x1400000

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowTracingLegacy;->setBufferCapacity(ILjava/io/PrintWriter;)V

    return-void
.end method

.method public shouldLogOnFrame()Z
    .locals 0

    .line 254
    iget-boolean p0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mLogOnFrame:Z

    return p0
.end method

.method public shouldLogOnTransaction()Z
    .locals 0

    .line 259
    iget-boolean p0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mLogOnFrame:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public startTraceInternal(Ljava/io/PrintWriter;)V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start tracing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowTracingLegacy;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p1}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    const/4 p1, 0x1

    .line 203
    iput-boolean p1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabledLockFree:Z

    iput-boolean p1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabled:Z

    .line 204
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    const-string p1, "trace.enable"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowTracingLegacy;->log(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 204
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public stopTraceInternal(Ljava/io/PrintWriter;)V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop tracing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowTracingLegacy;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Waiting for traces to flush."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 212
    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabledLockFree:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabled:Z

    .line 218
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracingLegacy;->writeTraceToFileLocked()V

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trace written to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowTracingLegacy;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 220
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final writeTraceToFileLocked()V
    .locals 7

    const-wide/16 v0, 0x20

    .line 264
    :try_start_0
    const-string v2, "writeTraceToFileLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 265
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v3, 0x10600000001L

    const-wide v5, 0x45434152544e4957L    # 4.655612620390422E25

    .line 266
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 267
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    .line 269
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide v5, 0x10600000003L

    .line 270
    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 271
    iget-object v3, p0, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    iget-object p0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mTraceFile:Ljava/io/File;

    invoke-virtual {v3, p0, v2}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 273
    :try_start_1
    const-string v2, "WindowTracing"

    const-string v3, "Unable to write buffer to file"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 276
    throw p0
.end method
