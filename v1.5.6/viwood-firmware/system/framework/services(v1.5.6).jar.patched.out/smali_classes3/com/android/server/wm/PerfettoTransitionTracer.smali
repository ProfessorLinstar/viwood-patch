.class public Lcom/android/server/wm/PerfettoTransitionTracer;
.super Ljava/lang/Object;
.source "PerfettoTransitionTracer.java"

# interfaces
.implements Lcom/android/server/wm/TransitionTracer;


# instance fields
.field public final mActiveTraces:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mDataSource:Landroid/tracing/transition/TransitionDataSource;


# direct methods
.method public static synthetic $r8$lambda$H5wVlqeH1DTkwv-Szsq8DHh1DTk(Lcom/android/server/wm/Transition;Landroid/tracing/perfetto/TracingContext;)V
    .locals 6

    .line 155
    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object p1

    const-wide v0, 0x10b00000060L

    .line 157
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 158
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 159
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iget-wide v2, p0, Lcom/android/server/wm/TransitionController$Logger;->mAbortTimeNs:J

    const-wide v4, 0x10300000008L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 161
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$JZkCQNdivAkAsLS9zDPgPjXKvwM(Lcom/android/server/wm/PerfettoTransitionTracer;Lcom/android/server/wm/Transition;Ljava/util/ArrayList;Landroid/tracing/perfetto/TracingContext;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/PerfettoTransitionTracer;->lambda$doLogSentTransition$1(Lcom/android/server/wm/Transition;Ljava/util/ArrayList;Landroid/tracing/perfetto/TracingContext;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JtzJffuPDPLiddD6poCsLwR5bbU(Lcom/android/server/wm/Transition;Landroid/tracing/perfetto/TracingContext;)V
    .locals 6

    .line 123
    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object p1

    const-wide v0, 0x10b00000060L

    .line 125
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 126
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 127
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iget-wide v2, p0, Lcom/android/server/wm/TransitionController$Logger;->mFinishTimeNs:J

    const-wide v4, 0x10300000009L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 129
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$TE1SY5-YqI6jeItAkU2z7hG8UjU()V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$YxztuhFFk_HN26p2zP9tP57N4EA(Lcom/android/server/wm/StartingData;Landroid/tracing/perfetto/TracingContext;)V
    .locals 6

    .line 181
    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object p1

    const-wide v0, 0x10b00000060L

    .line 183
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10500000001L

    .line 184
    iget p0, p0, Lcom/android/server/wm/StartingData;->mTransitionId:I

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10300000011L

    .line 186
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    .line 185
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 187
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/PerfettoTransitionTracer;->mActiveTraces:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    new-instance v2, Landroid/tracing/transition/TransitionDataSource;

    .line 39
    new-instance v3, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    new-instance v4, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda1;-><init>()V

    .line 40
    new-instance v5, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-direct {v2, v3, v4, v5}, Landroid/tracing/transition/TransitionDataSource;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/server/wm/PerfettoTransitionTracer;->mDataSource:Landroid/tracing/transition/TransitionDataSource;

    .line 43
    sget-object p0, Landroid/tracing/perfetto/InitArguments;->DEFAULTS:Landroid/tracing/perfetto/InitArguments;

    invoke-static {p0}, Landroid/tracing/perfetto/Producer;->init(Landroid/tracing/perfetto/InitArguments;)V

    .line 44
    new-instance p0, Landroid/tracing/perfetto/DataSourceParams$Builder;

    invoke-direct {p0}, Landroid/tracing/perfetto/DataSourceParams$Builder;-><init>()V

    .line 46
    invoke-virtual {p0, v1}, Landroid/tracing/perfetto/DataSourceParams$Builder;->setBufferExhaustedPolicy(I)Landroid/tracing/perfetto/DataSourceParams$Builder;

    move-result-object p0

    .line 48
    invoke-virtual {p0}, Landroid/tracing/perfetto/DataSourceParams$Builder;->build()Landroid/tracing/perfetto/DataSourceParams;

    move-result-object p0

    .line 49
    invoke-virtual {v2, p0}, Landroid/tracing/transition/TransitionDataSource;->register(Landroid/tracing/perfetto/DataSourceParams;)V

    return-void
.end method


# virtual methods
.method public final addTransitionTargetsToProto(Landroid/util/proto/ProtoOutputStream;Ljava/util/ArrayList;)V
    .locals 8

    const/4 p0, 0x0

    .line 215
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 216
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 219
    iget-object v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v1

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    .line 224
    :goto_1
    iget-object v2, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide v3, 0x20b0000000eL

    .line 226
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10500000001L

    .line 227
    iget v7, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mReadyMode:I

    invoke-virtual {p1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10500000004L

    .line 228
    iget v0, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mReadyFlags:I

    invoke-virtual {p1, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10500000002L

    .line 229
    invoke-virtual {p1, v5, v6, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000003L

    .line 230
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 231
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final doLogAbortedTransition(Lcom/android/server/wm/Transition;)V
    .locals 1

    .line 154
    iget-object p0, p0, Lcom/android/server/wm/PerfettoTransitionTracer;->mDataSource:Landroid/tracing/transition/TransitionDataSource;

    new-instance v0, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/Transition;)V

    invoke-virtual {p0, v0}, Landroid/tracing/transition/TransitionDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V

    return-void
.end method

.method public final doLogFinishTransition(Lcom/android/server/wm/Transition;)V
    .locals 1

    .line 122
    iget-object p0, p0, Lcom/android/server/wm/PerfettoTransitionTracer;->mDataSource:Landroid/tracing/transition/TransitionDataSource;

    new-instance v0, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/Transition;)V

    invoke-virtual {p0, v0}, Landroid/tracing/transition/TransitionDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V

    return-void
.end method

.method public doLogRemovingStartingWindow(Lcom/android/server/wm/StartingData;)V
    .locals 1

    .line 180
    iget-object p0, p0, Lcom/android/server/wm/PerfettoTransitionTracer;->mDataSource:Landroid/tracing/transition/TransitionDataSource;

    new-instance v0, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/StartingData;)V

    invoke-virtual {p0, v0}, Landroid/tracing/transition/TransitionDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V

    return-void
.end method

.method public final doLogSentTransition(Lcom/android/server/wm/Transition;Ljava/util/ArrayList;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/server/wm/PerfettoTransitionTracer;->mDataSource:Landroid/tracing/transition/TransitionDataSource;

    new-instance v1, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/PerfettoTransitionTracer;Lcom/android/server/wm/Transition;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/tracing/transition/TransitionDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V

    return-void
.end method

.method public isTracing()Z
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/android/server/wm/PerfettoTransitionTracer;->mActiveTraces:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$doLogSentTransition$1(Lcom/android/server/wm/Transition;Ljava/util/ArrayList;Landroid/tracing/perfetto/TracingContext;)V
    .locals 6

    .line 80
    invoke-virtual {p3}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object p3

    const-wide v0, 0x10b00000060L

    .line 82
    invoke-virtual {p3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 84
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p3, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 85
    iget-object v2, p1, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iget-wide v2, v2, Lcom/android/server/wm/TransitionController$Logger;->mCreateTimeNs:J

    const-wide v4, 0x10300000002L

    invoke-virtual {p3, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 87
    iget-object v2, p1, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iget-wide v2, v2, Lcom/android/server/wm/TransitionController$Logger;->mSendTimeNs:J

    const-wide v4, 0x10300000003L

    invoke-virtual {p3, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 89
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getStartTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->getId()J

    move-result-wide v2

    const-wide v4, 0x1040000000aL

    .line 88
    invoke-virtual {p3, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 91
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getFinishTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->getId()J

    move-result-wide v2

    const-wide v4, 0x1040000000bL

    .line 90
    invoke-virtual {p3, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x1050000000dL

    .line 92
    iget v4, p1, Lcom/android/server/wm/Transition;->mType:I

    invoke-virtual {p3, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000010L

    .line 93
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getFlags()I

    move-result p1

    invoke-virtual {p3, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 95
    invoke-virtual {p0, p3, p2}, Lcom/android/server/wm/PerfettoTransitionTracer;->addTransitionTargetsToProto(Landroid/util/proto/ProtoOutputStream;Ljava/util/ArrayList;)V

    .line 97
    invoke-virtual {p3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public logAbortedTransition(Lcom/android/server/wm/Transition;)V
    .locals 3

    .line 141
    invoke-virtual {p0}, Lcom/android/server/wm/PerfettoTransitionTracer;->isTracing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    const-string v0, "logAbortedTransition"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 147
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PerfettoTransitionTracer;->doLogAbortedTransition(Lcom/android/server/wm/Transition;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 150
    throw p0
.end method

.method public logFinishedTransition(Lcom/android/server/wm/Transition;)V
    .locals 3

    .line 109
    invoke-virtual {p0}, Lcom/android/server/wm/PerfettoTransitionTracer;->isTracing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    const-string v0, "logFinishedTransition"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 115
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PerfettoTransitionTracer;->doLogFinishTransition(Lcom/android/server/wm/Transition;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 118
    throw p0
.end method

.method public logRemovingStartingWindow(Lcom/android/server/wm/StartingData;)V
    .locals 3

    .line 167
    invoke-virtual {p0}, Lcom/android/server/wm/PerfettoTransitionTracer;->isTracing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    const-string v0, "logRemovingStartingWindow"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 173
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PerfettoTransitionTracer;->doLogRemovingStartingWindow(Lcom/android/server/wm/StartingData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 176
    throw p0
.end method

.method public logSentTransition(Lcom/android/server/wm/Transition;Ljava/util/ArrayList;)V
    .locals 3

    .line 65
    invoke-virtual {p0}, Lcom/android/server/wm/PerfettoTransitionTracer;->isTracing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    const-string v0, "logSentTransition"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 71
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PerfettoTransitionTracer;->doLogSentTransition(Lcom/android/server/wm/Transition;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 74
    throw p0
.end method

.method public startTrace(Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    return-void
.end method

.method public stopTrace(Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    return-void
.end method
