.class public Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;
.super Ljava/lang/Object;
.source "DropboxRateLimiter.java"


# instance fields
.field public mCount:I

.field public mStartTime:J

.field public mSuccessiveRateLimitCycles:I

.field public final synthetic this$0:Lcom/android/server/am/DropboxRateLimiter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/DropboxRateLimiter;JI)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->this$0:Lcom/android/server/am/DropboxRateLimiter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-wide p2, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mStartTime:J

    .line 221
    iput p4, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    const/4 p1, 0x0

    .line 222
    iput p1, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mSuccessiveRateLimitCycles:I

    return-void
.end method


# virtual methods
.method public getAllowedEntries()I
    .locals 1

    .line 262
    invoke-virtual {p0}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->isRepeated()Z

    move-result v0

    iget-object p0, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->this$0:Lcom/android/server/am/DropboxRateLimiter;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/server/am/DropboxRateLimiter;->-$$Nest$fgetmStrictRatelimitAllowedEntries(Lcom/android/server/am/DropboxRateLimiter;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/android/server/am/DropboxRateLimiter;->-$$Nest$fgetmRateLimitAllowedEntries(Lcom/android/server/am/DropboxRateLimiter;)I

    move-result p0

    return p0
.end method

.method public getBufferDuration()J
    .locals 2

    .line 266
    invoke-virtual {p0}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->isRepeated()Z

    move-result v0

    iget-object p0, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->this$0:Lcom/android/server/am/DropboxRateLimiter;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/server/am/DropboxRateLimiter;->-$$Nest$fgetmStrictRateLimitBufferDuration(Lcom/android/server/am/DropboxRateLimiter;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {p0}, Lcom/android/server/am/DropboxRateLimiter;->-$$Nest$fgetmRateLimitBufferDuration(Lcom/android/server/am/DropboxRateLimiter;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCount()I
    .locals 0

    .line 250
    iget p0, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    return p0
.end method

.method public getStartTime()J
    .locals 2

    .line 246
    iget-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mStartTime:J

    return-wide v0
.end method

.method public hasExpired(J)Z
    .locals 4

    .line 270
    iget-object v0, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->this$0:Lcom/android/server/am/DropboxRateLimiter;

    invoke-static {v0}, Lcom/android/server/am/DropboxRateLimiter;->-$$Nest$fgetmRateLimitBufferExpiryFactor(Lcom/android/server/am/DropboxRateLimiter;)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getBufferDuration()J

    move-result-wide v2

    mul-long/2addr v0, v2

    .line 271
    iget-wide v2, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mStartTime:J

    sub-long/2addr p1, v2

    cmp-long p0, p1, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public incrementCount()V
    .locals 1

    .line 234
    iget v0, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    return-void
.end method

.method public incrementSuccessiveRateLimitCycles()V
    .locals 1

    .line 242
    iget v0, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mSuccessiveRateLimitCycles:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mSuccessiveRateLimitCycles:I

    return-void
.end method

.method public isRepeated()Z
    .locals 1

    .line 258
    iget p0, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mSuccessiveRateLimitCycles:I

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCount(I)V
    .locals 0

    .line 230
    iput p1, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    .line 226
    iput-wide p1, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mStartTime:J

    return-void
.end method

.method public setSuccessiveRateLimitCycles(I)V
    .locals 0

    .line 238
    iput p1, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mSuccessiveRateLimitCycles:I

    return-void
.end method
