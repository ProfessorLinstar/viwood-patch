.class public final Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;
.super Ljava/lang/Object;
.source "FieldClassificationEventLogger.java"


# instance fields
.field public mAppPackageUid:I

.field public mCountClassifications:I

.field public mIsSessionGc:Z

.field public mLatencyClassificationRequestMillis:J

.field public mNextFillRequestId:I

.field public mRequestId:I

.field public mSessionId:I

.field public mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 196
    iput-wide v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mLatencyClassificationRequestMillis:J

    const/4 v0, -0x1

    .line 197
    iput v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mCountClassifications:I

    .line 198
    iput v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mSessionId:I

    .line 199
    iput v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mRequestId:I

    .line 200
    iput v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mNextFillRequestId:I

    .line 201
    iput v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mAppPackageUid:I

    return-void
.end method
