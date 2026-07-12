.class public abstract Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
.super Ljava/lang/Object;
.source "ContextHubServiceTransaction.java"


# instance fields
.field public mIsComplete:Z

.field public final mMessageSequenceNumber:I

.field public final mNanoAppId:J

.field public mNextRetryTime:J

.field public mNumCompletedStartCalls:I

.field public final mOwnerId:I

.field public final mPackage:Ljava/lang/String;

.field public mTimeoutTime:J

.field public final mTransactionId:I

.field public final mTransactionType:I


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mIsComplete:Z

    .line 72
    iput p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionId:I

    .line 73
    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    .line 74
    iput-wide p3, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNanoAppId:J

    .line 75
    iput-object p5, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mPackage:Ljava/lang/String;

    const p1, 0x7fffffff

    .line 76
    iput p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mMessageSequenceNumber:I

    const-wide p2, 0x7fffffffffffffffL

    .line 77
    iput-wide p2, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNextRetryTime:J

    .line 78
    iput-wide p2, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTimeoutTime:J

    .line 79
    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNumCompletedStartCalls:I

    .line 80
    iput p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mOwnerId:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mIsComplete:Z

    .line 59
    iput p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionId:I

    .line 60
    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    const-wide p1, 0x7fffffffffffffffL

    .line 61
    iput-wide p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNanoAppId:J

    .line 62
    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mPackage:Ljava/lang/String;

    const p3, 0x7fffffff

    .line 63
    iput p3, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mMessageSequenceNumber:I

    .line 64
    iput-wide p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNextRetryTime:J

    .line 65
    iput-wide p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTimeoutTime:J

    .line 66
    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNumCompletedStartCalls:I

    .line 67
    iput p3, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mOwnerId:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;II)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mIsComplete:Z

    .line 85
    iput p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionId:I

    .line 86
    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    const-wide p1, 0x7fffffffffffffffL

    .line 87
    iput-wide p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNanoAppId:J

    .line 88
    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mPackage:Ljava/lang/String;

    .line 89
    iput p4, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mMessageSequenceNumber:I

    .line 90
    iput-wide p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNextRetryTime:J

    .line 91
    iput-wide p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTimeoutTime:J

    .line 92
    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNumCompletedStartCalls:I

    .line 93
    iput p5, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mOwnerId:I

    return-void
.end method


# virtual methods
.method public getMessageSequenceNumber()I
    .locals 0

    .line 140
    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mMessageSequenceNumber:I

    return p0
.end method

.method public getNextRetryTime()J
    .locals 2

    .line 144
    iget-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNextRetryTime:J

    return-wide v0
.end method

.method public getNumCompletedStartCalls()I
    .locals 0

    .line 152
    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNumCompletedStartCalls:I

    return p0
.end method

.method public getOwnerId()J
    .locals 6

    .line 160
    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mOwnerId:I

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getTimeout(Ljava/util/concurrent/TimeUnit;)J
    .locals 2

    .line 172
    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    if-eqz p0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-wide/16 v0, 0x5

    .line 184
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0

    .line 176
    :cond_0
    sget-object p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_TIMEOUT:Ljava/time/Duration;

    invoke-virtual {p0}, Ljava/time/Duration;->toNanos()J

    move-result-wide v0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0

    :cond_1
    const-wide/16 v0, 0x1e

    .line 174
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getTimeoutTime()J
    .locals 2

    .line 148
    iget-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTimeoutTime:J

    return-wide v0
.end method

.method public getTransactionId()I
    .locals 0

    .line 131
    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionId:I

    return p0
.end method

.method public getTransactionType()I
    .locals 0

    .line 136
    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    return p0
.end method

.method public isComplete()Z
    .locals 0

    .line 210
    iget-boolean p0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mIsComplete:Z

    return p0
.end method

.method public onQueryResponse(ILjava/util/List;)V
    .locals 0

    .line 0
    return-void
.end method

.method public abstract onTransact()I
.end method

.method public abstract onTransactionComplete(I)V
.end method

.method public setComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mIsComplete:Z

    return-void
.end method

.method public setNextRetryTime(J)V
    .locals 0

    .line 198
    iput-wide p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNextRetryTime:J

    return-void
.end method

.method public setNumCompletedStartCalls(I)V
    .locals 0

    .line 206
    iput p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNumCompletedStartCalls:I

    return-void
.end method

.method public setTimeoutTime(J)V
    .locals 0

    .line 202
    iput-wide p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTimeoutTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/hardware/location/ContextHubTransaction;->typeToString(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-wide v1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNanoAppId:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 220
    const-string v1, "appId = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-wide v1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNanoAppId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_0
    const-string/jumbo v1, "package = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mMessageSequenceNumber:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 227
    const-string v1, ", messageSequenceNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mMessageSequenceNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    :cond_1
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 232
    :cond_2
    const-string v1, ", nextRetryTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget-wide v1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNextRetryTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 234
    const-string v1, ", timeoutTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget-wide v1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTimeoutTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 236
    const-string v1, ", numCompletedStartCalls = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNumCompletedStartCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    const-string v1, ", ownerId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getOwnerId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 241
    :cond_3
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
