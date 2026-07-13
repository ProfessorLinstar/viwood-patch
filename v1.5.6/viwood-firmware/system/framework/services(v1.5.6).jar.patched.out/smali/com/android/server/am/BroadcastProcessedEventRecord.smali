.class public final Lcom/android/server/am/BroadcastProcessedEventRecord;
.super Ljava/lang/Object;
.source "BroadcastProcessedEventRecord.java"


# instance fields
.field public mBroadcastTypes:[I

.field public mIntentAction:Ljava/lang/String;

.field public mMaxReceiverFinishTimeMillis:J

.field public mNumberOfReceivers:I

.field public mReceiverProcessName:Ljava/lang/String;

.field public mReceiverUid:I

.field public mSenderUid:I

.field public mTotalBroadcastFinishTimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 47
    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mMaxReceiverFinishTimeMillis:J

    return-void
.end method


# virtual methods
.method public addReceiverFinishTime(J)V
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mTotalBroadcastFinishTimeMillis:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mTotalBroadcastFinishTimeMillis:J

    .line 85
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mMaxReceiverFinishTimeMillis:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mMaxReceiverFinishTimeMillis:J

    .line 86
    iget p1, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mNumberOfReceivers:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mNumberOfReceivers:I

    return-void
.end method

.method public logToStatsD()V
    .locals 11

    .line 127
    iget-wide v6, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mTotalBroadcastFinishTimeMillis:J

    const-wide/16 v0, 0xa

    cmp-long v0, v6, v0

    if-gtz v0, :cond_0

    return-void

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mIntentAction:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mSenderUid:I

    iget v3, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mReceiverUid:I

    iget v4, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mNumberOfReceivers:I

    iget-object v5, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mReceiverProcessName:Ljava/lang/String;

    iget-wide v8, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mMaxReceiverFinishTimeMillis:J

    iget-object v10, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mBroadcastTypes:[I

    const/16 v0, 0x404

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIILjava/lang/String;JJ[I)V

    return-void
.end method

.method public setBroadcastTypes([I)Lcom/android/server/am/BroadcastProcessedEventRecord;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mBroadcastTypes:[I

    return-object p0
.end method

.method public setIntentAction(Ljava/lang/String;)Lcom/android/server/am/BroadcastProcessedEventRecord;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mIntentAction:Ljava/lang/String;

    return-object p0
.end method

.method public setReceiverProcessName(Ljava/lang/String;)Lcom/android/server/am/BroadcastProcessedEventRecord;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mReceiverProcessName:Ljava/lang/String;

    return-object p0
.end method

.method public setReceiverUid(I)Lcom/android/server/am/BroadcastProcessedEventRecord;
    .locals 0

    .line 79
    iput p1, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mReceiverUid:I

    return-object p0
.end method

.method public setSenderUid(I)Lcom/android/server/am/BroadcastProcessedEventRecord;
    .locals 0

    .line 73
    iput p1, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mSenderUid:I

    return-object p0
.end method
