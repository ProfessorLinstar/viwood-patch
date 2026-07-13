.class public final Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;
.super Ljava/lang/Object;
.source "FillResponseEventLogger.java"


# instance fields
.field public mAppPackageUid:I

.field public mAuthenticationFailureReason:I

.field public mAuthenticationResult:I

.field public mAuthenticationType:I

.field public mAvailableCount:I

.field public mAvailablePccCount:I

.field public mAvailablePccOnlyCount:I

.field public mDetectionPref:I

.field public mDisplayPresentationType:I

.field public mLatencyAuthenticationUiDisplayMillis:I

.field public mLatencyDatasetDisplayMillis:I

.field public mLatencyFillResponseReceivedMillis:I

.field public mLatencyResponseProcessingMillis:J

.field public mRequestId:I

.field public mResponseStatus:I

.field public mSaveUiTriggerIds:I

.field public mTotalDatasetsProvided:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 491
    iput v0, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mRequestId:I

    .line 492
    iput v0, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAppPackageUid:I

    const/4 v1, 0x0

    .line 493
    iput v1, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mDisplayPresentationType:I

    .line 494
    iput v1, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailableCount:I

    .line 495
    iput v0, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mSaveUiTriggerIds:I

    .line 496
    iput v0, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyFillResponseReceivedMillis:I

    .line 497
    iput v1, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAuthenticationType:I

    .line 498
    iput v1, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAuthenticationResult:I

    .line 499
    iput v0, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAuthenticationFailureReason:I

    .line 500
    iput v0, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyAuthenticationUiDisplayMillis:I

    .line 501
    iput v0, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyDatasetDisplayMillis:I

    .line 502
    iput v1, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mResponseStatus:I

    const-wide/16 v2, -0x1

    .line 503
    iput-wide v2, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyResponseProcessingMillis:J

    .line 504
    iput v0, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailablePccCount:I

    .line 505
    iput v0, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailablePccOnlyCount:I

    .line 506
    iput v0, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mTotalDatasetsProvided:I

    .line 507
    iput v1, p0, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mDetectionPref:I

    return-void
.end method
