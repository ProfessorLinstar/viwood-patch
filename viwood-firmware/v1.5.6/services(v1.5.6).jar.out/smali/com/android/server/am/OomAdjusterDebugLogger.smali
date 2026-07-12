.class public Lcom/android/server/am/OomAdjusterDebugLogger;
.super Ljava/lang/Object;
.source "OomAdjusterDebugLogger.java"


# instance fields
.field public final mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field public final mOomAdjuster:Lcom/android/server/am/OomAdjuster;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 40
    iput-object p2, p0, Lcom/android/server/am/OomAdjusterDebugLogger;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    return-void
.end method


# virtual methods
.method public logClearLastBackgroundTime(I)V
    .locals 7

    .line 106
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget v3, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iget p0, p0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 108
    invoke-static {p0}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0xb

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    .line 106
    invoke-static/range {v0 .. v6}, Lcom/android/server/am/EventLogTags;->writeAmOomAdjMisc(IIIIIILjava/lang/String;)V

    return-void
.end method

.method public logProcStateChanged(IIIIII)V
    .locals 9

    .line 77
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget v3, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iget v0, v0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 79
    invoke-static {v0}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v8

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 77
    invoke-static/range {v1 .. v8}, Lcom/android/server/am/EventLogTags;->writeAmProcStateChanged(IIIIIIILjava/lang/String;)V

    .line 80
    const-string/jumbo p1, "procStateChanged"

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjusterDebugLogger;->maybeLogStacktrace(Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/android/server/am/OomAdjusterDebugLogger;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p1, p1, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetProcStateDelay:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjusterDebugLogger;->maybeSleep(I)V

    return-void
.end method

.method public logScheduleUidIdle1(IJ)V
    .locals 7

    .line 85
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget v3, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    long-to-int v4, p2

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v0, 0x1

    const/4 v2, 0x0

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/am/EventLogTags;->writeAmOomAdjMisc(IIIIIILjava/lang/String;)V

    return-void
.end method

.method public logScheduleUidIdle2(IIJ)V
    .locals 7

    .line 90
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget v3, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    long-to-int v4, p3

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v0, 0x2

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/am/EventLogTags;->writeAmOomAdjMisc(IIIIIILjava/lang/String;)V

    return-void
.end method

.method public logScheduleUidIdle3(J)V
    .locals 7

    .line 95
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget v3, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    long-to-int v4, p1

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/am/EventLogTags;->writeAmOomAdjMisc(IIIIIILjava/lang/String;)V

    return-void
.end method

.method public logSetLastBackgroundTime(IJ)V
    .locals 7

    .line 100
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget v3, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    long-to-int v4, p2

    iget p0, p0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 102
    invoke-static {p0}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0xa

    const/4 v2, 0x0

    const/4 v5, 0x0

    move v1, p1

    .line 100
    invoke-static/range {v0 .. v6}, Lcom/android/server/am/EventLogTags;->writeAmOomAdjMisc(IIIIIILjava/lang/String;)V

    return-void
.end method

.method public logUidStateChanged(IIIIII)V
    .locals 9

    .line 68
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iget v0, v0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 70
    invoke-static {v0}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v8

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 68
    invoke-static/range {v1 .. v8}, Lcom/android/server/am/EventLogTags;->writeAmUidStateChanged(IIIIIIILjava/lang/String;)V

    .line 71
    const-string/jumbo p1, "uidStateChanged"

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjusterDebugLogger;->maybeLogStacktrace(Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/android/server/am/OomAdjusterDebugLogger;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p1, p1, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetUidStateDelay:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjusterDebugLogger;->maybeSleep(I)V

    return-void
.end method

.method public final maybeLogStacktrace(Ljava/lang/String;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterDebugLogger;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mEnableProcStateStacktrace:Z

    if-nez v0, :cond_0

    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget p0, p0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 52
    invoke-static {p0}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Landroid/app/StackTrace;

    const-string v0, "Called here"

    invoke-direct {p1, v0}, Landroid/app/StackTrace;-><init>(Ljava/lang/String;)V

    .line 51
    const-string v0, "am_stack"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final maybeSleep(I)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-long p0, p1

    .line 61
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public shouldLog(I)Z
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterDebugLogger;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerConstants;->shouldDebugUidForProcState(I)Z

    move-result p0

    return p0
.end method
