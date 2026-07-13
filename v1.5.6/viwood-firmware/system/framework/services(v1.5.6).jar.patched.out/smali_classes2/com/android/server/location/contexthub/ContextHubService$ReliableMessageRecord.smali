.class public Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;
.super Ljava/lang/Object;
.source "ContextHubService.java"


# instance fields
.field public mContextHubId:I

.field public mErrorCode:B

.field public mMessageSequenceNumber:I

.field public mTimestamp:J


# direct methods
.method public constructor <init>(IJIB)V
    .locals 0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput p1, p0, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mContextHubId:I

    .line 291
    iput-wide p2, p0, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mTimestamp:J

    .line 292
    iput p4, p0, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mMessageSequenceNumber:I

    .line 293
    iput-byte p5, p0, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mErrorCode:B

    return-void
.end method


# virtual methods
.method public getContextHubId()I
    .locals 0

    .line 297
    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mContextHubId:I

    return p0
.end method

.method public getErrorCode()B
    .locals 0

    .line 309
    iget-byte p0, p0, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mErrorCode:B

    return p0
.end method

.method public getMessageSequenceNumber()I
    .locals 0

    .line 305
    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mMessageSequenceNumber:I

    return p0
.end method

.method public getTimestamp()J
    .locals 2

    .line 301
    iget-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mTimestamp:J

    return-wide v0
.end method

.method public isExpired()Z
    .locals 4

    .line 317
    iget-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mTimestamp:J

    sget-object p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_DUPLICATE_DETECTION_TIMEOUT:Ljava/time/Duration;

    .line 320
    invoke-virtual {p0}, Ljava/time/Duration;->toNanos()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 321
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setErrorCode(B)V
    .locals 0

    .line 313
    iput-byte p1, p0, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mErrorCode:B

    return-void
.end method
