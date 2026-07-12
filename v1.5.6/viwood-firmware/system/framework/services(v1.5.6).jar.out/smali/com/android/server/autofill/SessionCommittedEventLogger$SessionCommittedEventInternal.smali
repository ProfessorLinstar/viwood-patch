.class public final Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;
.super Ljava/lang/Object;
.source "SessionCommittedEventLogger.java"


# instance fields
.field public mCommitReason:I

.field public mComponentPackageUid:I

.field public mLastFillResponseHasSaveInfo:Z

.field public mRequestCount:I

.field public mSaveDataTypeCount:I

.field public mSaveInfoCount:I

.field public mServiceUid:I

.field public mSessionDurationMillis:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 170
    iput v0, p0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mComponentPackageUid:I

    const/4 v1, 0x0

    .line 171
    iput v1, p0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mRequestCount:I

    .line 172
    iput v1, p0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mCommitReason:I

    const-wide/16 v2, 0x0

    .line 173
    iput-wide v2, p0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSessionDurationMillis:J

    .line 174
    iput v0, p0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSaveInfoCount:I

    .line 175
    iput v0, p0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSaveDataTypeCount:I

    .line 176
    iput-boolean v1, p0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mLastFillResponseHasSaveInfo:Z

    .line 177
    iput v0, p0, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mServiceUid:I

    return-void
.end method
