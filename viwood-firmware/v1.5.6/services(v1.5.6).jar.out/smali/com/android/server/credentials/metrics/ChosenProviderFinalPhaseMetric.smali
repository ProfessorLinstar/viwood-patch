.class public Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;
.super Ljava/lang/Object;
.source "ChosenProviderFinalPhaseMetric.java"


# instance fields
.field public mChosenClassType:Ljava/lang/String;

.field public mChosenProviderStatus:I

.field public mChosenUid:I

.field public mFallbackUiUid:I

.field public mFinalFinishTimeNanoseconds:J

.field public mFrameworkException:Ljava/lang/String;

.field public mHasException:Z

.field public mIsPrimary:Z

.field public mOemUiUid:I

.field public mOemUiUsageStatus:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

.field public mPreQueryPhaseLatencyMicroseconds:I

.field public mQueryEndTimeNanoseconds:J

.field public mQueryPhaseLatencyMicroseconds:I

.field public mQueryStartTimeNanoseconds:J

.field public mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

.field public mServiceBeganTimeNanoseconds:J

.field public final mSessionIdCaller:I

.field public final mSessionIdProvider:I

.field public mUiCallEndTimeNanoseconds:J

.field public mUiCallStartTimeNanoseconds:J

.field public mUiReturned:Z


# direct methods
.method public constructor <init>(II)V
    .locals 4

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiReturned:Z

    const/4 v1, -0x1

    .line 43
    iput v1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mChosenUid:I

    .line 47
    iput v1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mPreQueryPhaseLatencyMicroseconds:I

    .line 48
    iput v1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mQueryPhaseLatencyMicroseconds:I

    const-wide/16 v2, -0x1

    .line 54
    iput-wide v2, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mServiceBeganTimeNanoseconds:J

    .line 57
    iput-wide v2, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mQueryStartTimeNanoseconds:J

    .line 59
    iput-wide v2, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mQueryEndTimeNanoseconds:J

    .line 61
    iput-wide v2, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiCallStartTimeNanoseconds:J

    .line 63
    iput-wide v2, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiCallEndTimeNanoseconds:J

    .line 65
    iput-wide v2, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFinalFinishTimeNanoseconds:J

    .line 70
    iput v1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mOemUiUid:I

    .line 71
    iput v1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFallbackUiUid:I

    .line 72
    sget-object v2, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->UNKNOWN:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    iput-object v2, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mOemUiUsageStatus:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    .line 74
    iput v1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mChosenProviderStatus:I

    .line 76
    iput-boolean v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mHasException:Z

    .line 78
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFrameworkException:Ljava/lang/String;

    .line 82
    new-instance v2, Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v2, v3, v3}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    iput-object v2, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 84
    iput-boolean v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mIsPrimary:Z

    .line 86
    iput-object v1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mChosenClassType:Ljava/lang/String;

    .line 90
    iput p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mSessionIdCaller:I

    .line 91
    iput p2, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mSessionIdProvider:I

    return-void
.end method


# virtual methods
.method public getChosenClassType()Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mChosenClassType:Ljava/lang/String;

    return-object p0
.end method

.method public getChosenProviderStatus()I
    .locals 0

    .line 255
    iget p0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mChosenProviderStatus:I

    return p0
.end method

.method public getChosenUid()I
    .locals 0

    .line 107
    iget p0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mChosenUid:I

    return p0
.end method

.method public getFallbackUiUid()I
    .locals 0

    .line 335
    iget p0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFallbackUiUid:I

    return p0
.end method

.method public getFinalFinishTimeNanoseconds()J
    .locals 2

    .line 230
    iget-wide v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFinalFinishTimeNanoseconds:J

    return-wide v0
.end method

.method public getFrameworkException()Ljava/lang/String;
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFrameworkException:Ljava/lang/String;

    return-object p0
.end method

.method public getOemUiUid()I
    .locals 0

    .line 327
    iget p0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mOemUiUid:I

    return p0
.end method

.method public getOemUiUsageStatus()I
    .locals 0

    .line 343
    iget-object p0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mOemUiUsageStatus:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->getLoggingInt()I

    move-result p0

    return p0
.end method

.method public getQueryEndTimeNanoseconds()J
    .locals 2

    .line 218
    iget-wide v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mQueryEndTimeNanoseconds:J

    return-wide v0
.end method

.method public getQueryStartTimeNanoseconds()J
    .locals 2

    .line 214
    iget-wide v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mQueryStartTimeNanoseconds:J

    return-wide v0
.end method

.method public getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    return-object p0
.end method

.method public getSessionIdCaller()I
    .locals 0

    .line 311
    iget p0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mSessionIdCaller:I

    return p0
.end method

.method public getSessionIdProvider()I
    .locals 0

    .line 265
    iget p0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mSessionIdProvider:I

    return p0
.end method

.method public getTimestampFromReferenceStartMicroseconds(J)I
    .locals 2

    .line 244
    iget-wide v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mServiceBeganTimeNanoseconds:J

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    .line 245
    const-string p0, "ChosenFinalPhaseMetric"

    const-string p1, "The timestamp is before service started, falling back to default int"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    .line 248
    div-long/2addr p1, v0

    long-to-int p0, p1

    return p0
.end method

.method public getUiCallEndTimeNanoseconds()J
    .locals 2

    .line 226
    iget-wide v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiCallEndTimeNanoseconds:J

    return-wide v0
.end method

.method public getUiCallStartTimeNanoseconds()J
    .locals 2

    .line 222
    iget-wide v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiCallStartTimeNanoseconds:J

    return-wide v0
.end method

.method public isHasException()Z
    .locals 0

    .line 285
    iget-boolean p0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mHasException:Z

    return p0
.end method

.method public isPrimary()Z
    .locals 0

    .line 319
    iget-boolean p0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mIsPrimary:Z

    return p0
.end method

.method public isUiReturned()Z
    .locals 0

    .line 275
    iget-boolean p0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiReturned:Z

    return p0
.end method

.method public setChosenClassType(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mChosenClassType:Ljava/lang/String;

    return-void
.end method

.method public setChosenProviderStatus(I)V
    .locals 0

    .line 259
    iput p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mChosenProviderStatus:I

    return-void
.end method

.method public setChosenUid(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mChosenUid:I

    return-void
.end method

.method public setFallbackUiUid(I)V
    .locals 0

    .line 331
    iput p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFallbackUiUid:I

    return-void
.end method

.method public setFinalFinishTimeNanoseconds(J)V
    .locals 0

    .line 206
    iput-wide p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFinalFinishTimeNanoseconds:J

    return-void
.end method

.method public setFrameworkException(Ljava/lang/String;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFrameworkException:Ljava/lang/String;

    return-void
.end method

.method public setHasException(Z)V
    .locals 0

    .line 281
    iput-boolean p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mHasException:Z

    return-void
.end method

.method public setOemUiUid(I)V
    .locals 0

    .line 323
    iput p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mOemUiUid:I

    return-void
.end method

.method public setOemUiUsageStatus(Lcom/android/server/credentials/metrics/OemUiUsageStatus;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mOemUiUsageStatus:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    return-void
.end method

.method public setPrimary(Z)V
    .locals 0

    .line 315
    iput-boolean p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mIsPrimary:Z

    return-void
.end method

.method public setQueryEndTimeNanoseconds(J)V
    .locals 0

    .line 194
    iput-wide p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mQueryEndTimeNanoseconds:J

    return-void
.end method

.method public setQueryPhaseLatencyMicroseconds(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mQueryPhaseLatencyMicroseconds:I

    return-void
.end method

.method public setQueryStartTimeNanoseconds(J)V
    .locals 0

    .line 190
    iput-wide p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mQueryStartTimeNanoseconds:J

    return-void
.end method

.method public setResponseCollective(Lcom/android/server/credentials/metrics/shared/ResponseCollective;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    return-void
.end method

.method public setServiceBeganTimeNanoseconds(J)V
    .locals 0

    .line 186
    iput-wide p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mServiceBeganTimeNanoseconds:J

    return-void
.end method

.method public setUiCallEndTimeNanoseconds(J)V
    .locals 0

    .line 202
    iput-wide p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiCallEndTimeNanoseconds:J

    return-void
.end method

.method public setUiCallStartTimeNanoseconds(J)V
    .locals 0

    .line 198
    iput-wide p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiCallStartTimeNanoseconds:J

    return-void
.end method

.method public setUiReturned(Z)V
    .locals 0

    .line 271
    iput-boolean p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiReturned:Z

    return-void
.end method
