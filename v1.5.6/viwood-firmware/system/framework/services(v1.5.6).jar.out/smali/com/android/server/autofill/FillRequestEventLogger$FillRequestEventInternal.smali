.class public final Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;
.super Ljava/lang/Object;
.source "FillRequestEventLogger.java"


# instance fields
.field public mAppPackageUid:I

.field public mAutofillServiceUid:I

.field public mFlags:I

.field public mInlineSuggestionHostUid:I

.field public mIsAugmented:Z

.field public mIsClientSuggestionFallback:Z

.field public mIsFillDialogEligible:Z

.field public mLatencyFillRequestSentMillis:I

.field public mRequestId:I

.field public mRequestTriggerReason:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 255
    iput v0, p0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mAppPackageUid:I

    .line 256
    iput v0, p0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mAutofillServiceUid:I

    .line 257
    iput v0, p0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mInlineSuggestionHostUid:I

    const/4 v1, 0x0

    .line 258
    iput-boolean v1, p0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mIsAugmented:Z

    .line 259
    iput-boolean v1, p0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mIsClientSuggestionFallback:Z

    .line 260
    iput-boolean v1, p0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mIsFillDialogEligible:Z

    .line 261
    iput v1, p0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mRequestTriggerReason:I

    .line 263
    iput v0, p0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mFlags:I

    .line 264
    iput v0, p0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mLatencyFillRequestSentMillis:I

    return-void
.end method
