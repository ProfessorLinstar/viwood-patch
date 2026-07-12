.class public final Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;
.super Ljava/lang/Object;
.source "SaveEventLogger.java"


# instance fields
.field public mAppPackageUid:I

.field public mCancelButtonClicked:Z

.field public mDialogDismissed:Z

.field public mFlag:J

.field public mIsFrameworkCreatedSaveInfo:Z

.field public mIsNewField:Z

.field public mIsSaved:Z

.field public mLatencySaveFinishMillis:J

.field public mLatencySaveRequestMillis:J

.field public mLatencySaveUiDisplayMillis:J

.field public mRequestId:I

.field public mSaveButtonClicked:Z

.field public mSaveUiNotShownReason:I

.field public mSaveUiShownReason:I

.field public mSaveUiTriggerIds:I

.field public mServiceUid:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 355
    iput v0, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mAppPackageUid:I

    .line 356
    iput v0, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiTriggerIds:I

    const-wide/16 v1, -0x1

    .line 357
    iput-wide v1, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mFlag:J

    const/4 v1, 0x0

    .line 358
    iput-boolean v1, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsNewField:Z

    .line 359
    iput v1, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiShownReason:I

    .line 360
    iput v1, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiNotShownReason:I

    .line 361
    iput-boolean v1, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveButtonClicked:Z

    .line 362
    iput-boolean v1, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mCancelButtonClicked:Z

    .line 363
    iput-boolean v1, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mDialogDismissed:Z

    .line 364
    iput-boolean v1, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsSaved:Z

    const-wide/high16 v2, -0x8000000000000000L

    .line 365
    iput-wide v2, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveUiDisplayMillis:J

    .line 366
    iput-wide v2, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveRequestMillis:J

    .line 367
    iput-wide v2, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveFinishMillis:J

    .line 368
    iput-boolean v1, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsFrameworkCreatedSaveInfo:Z

    .line 369
    iput v0, p0, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mServiceUid:I

    return-void
.end method
