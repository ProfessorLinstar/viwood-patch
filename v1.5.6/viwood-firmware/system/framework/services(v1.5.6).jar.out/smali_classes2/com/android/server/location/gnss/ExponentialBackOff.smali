.class public Lcom/android/server/location/gnss/ExponentialBackOff;
.super Ljava/lang/Object;
.source "ExponentialBackOff.java"


# instance fields
.field public mCurrentIntervalMillis:J

.field public final mInitIntervalMillis:J

.field public final mMaxIntervalMillis:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, Lcom/android/server/location/gnss/ExponentialBackOff;->mInitIntervalMillis:J

    .line 30
    iput-wide p3, p0, Lcom/android/server/location/gnss/ExponentialBackOff;->mMaxIntervalMillis:J

    const-wide/16 p3, 0x2

    .line 32
    div-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/location/gnss/ExponentialBackOff;->mCurrentIntervalMillis:J

    return-void
.end method


# virtual methods
.method public nextBackoffMillis()J
    .locals 5

    .line 36
    iget-wide v0, p0, Lcom/android/server/location/gnss/ExponentialBackOff;->mCurrentIntervalMillis:J

    iget-wide v2, p0, Lcom/android/server/location/gnss/ExponentialBackOff;->mMaxIntervalMillis:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-wide v2

    :cond_0
    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    .line 40
    iput-wide v0, p0, Lcom/android/server/location/gnss/ExponentialBackOff;->mCurrentIntervalMillis:J

    return-wide v0
.end method

.method public reset()V
    .locals 4

    .line 45
    iget-wide v0, p0, Lcom/android/server/location/gnss/ExponentialBackOff;->mInitIntervalMillis:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/gnss/ExponentialBackOff;->mCurrentIntervalMillis:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExponentialBackOff{mInitIntervalMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/location/gnss/ExponentialBackOff;->mInitIntervalMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxIntervalMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/location/gnss/ExponentialBackOff;->mMaxIntervalMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentIntervalMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/location/gnss/ExponentialBackOff;->mCurrentIntervalMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
