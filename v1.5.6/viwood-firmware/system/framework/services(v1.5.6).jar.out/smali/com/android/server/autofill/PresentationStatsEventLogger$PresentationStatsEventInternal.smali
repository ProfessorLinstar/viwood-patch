.class public final Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;
.super Ljava/lang/Object;
.source "PresentationStatsEventLogger.java"


# instance fields
.field public mAlreadyFilledAutofillIds:Landroid/util/ArraySet;

.field public mAuthenticationResult:I

.field public mAuthenticationType:I

.field public mAutofillIdsAttemptedAutofill:Landroid/util/ArraySet;

.field public mAutofillServiceUid:I

.field public mAutofilledTimestampMs:I

.field public mAvailableCount:I

.field public mAvailablePccCount:I

.field public mAvailablePccOnlyCount:I

.field public mCountFilteredUserTyping:I

.field public mCountNotShownImePresentationNotDrawn:I

.field public mCountNotShownImeUserNotSeen:I

.field public mCountShown:I

.field public mDetectionPreference:I

.field public mDialogDismissed:Z

.field public mDisplayPresentationType:I

.field public mFailedAutofillIds:Landroid/util/ArraySet;

.field public mFieldClassificationRequestId:I

.field public mFieldFirstLength:I

.field public mFieldLastLength:I

.field public mFieldModifiedFirstTimestampMs:I

.field public mFieldModifiedLastTimestampMs:I

.field public mFillDialogNotShownReason:I

.field public mFillDialogReadyToShowMs:I

.field public mFillRequestSentTimestampMs:I

.field public mFillResponseReceivedTimestampMs:I

.field public mFilteredFillabaleViewCount:I

.field public mFixExpireResponseDuringAuthCount:I

.field public mFocusedId:I

.field public mFocusedVirtualAutofillId:I

.field public mHasRelayoutLog:Z

.field public mImeAnimationFinishMs:I

.field public mInlineSuggestionHostUid:I

.field public mIsCredentialRequest:Z

.field public mIsDatasetAvailable:Z

.field public mIsRequestTriggered:Z

.field public mLatencyAuthenticationUiDisplayMillis:I

.field public mLatencyDatasetDisplayMillis:I

.field public mNegativeCtaButtonClicked:Z

.field public mNoPresentationReason:I

.field public mNotifyViewEnteredIgnoredDuringAuthCount:I

.field public mPositiveCtaButtonClicked:Z

.field public mRequestId:I

.field public mSelectedDatasetId:I

.field public mSelectedDatasetPickedReason:I

.field public mSelectionTimestamp:I

.field public mSuggestionPresentedLastTimestampMs:I

.field public mSuggestionPresentedTimestampMs:I

.field public mSuggestionSentTimestampMs:I

.field public mViewFailedOnRefillCount:I

.field public mViewFailedPriorToRefillCount:I

.field public mViewFillFailureCount:I

.field public mViewFillSuccessCount:I

.field public mViewFillableTotalCount:I

.field public mViewFilledButUnexpectedCount:I

.field public mViewFilledSuccessfullyOnRefillCount:I

.field public mWebviewRequestedCredential:Z

.field public shouldResetShownCount:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1118
    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    .line 1121
    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    .line 1125
    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDisplayPresentationType:I

    const/4 v1, -0x1

    .line 1126
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofillServiceUid:I

    .line 1127
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mInlineSuggestionHostUid:I

    .line 1129
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillRequestSentTimestampMs:I

    .line 1130
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillResponseReceivedTimestampMs:I

    .line 1131
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionSentTimestampMs:I

    .line 1132
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedTimestampMs:I

    .line 1133
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetId:I

    .line 1134
    iput-boolean v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDialogDismissed:Z

    .line 1135
    iput-boolean v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNegativeCtaButtonClicked:Z

    .line 1136
    iput-boolean v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mPositiveCtaButtonClicked:Z

    .line 1137
    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationType:I

    .line 1138
    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationResult:I

    .line 1139
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mLatencyAuthenticationUiDisplayMillis:I

    .line 1140
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mLatencyDatasetDisplayMillis:I

    .line 1141
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccCount:I

    .line 1142
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccOnlyCount:I

    .line 1143
    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetPickedReason:I

    .line 1144
    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDetectionPreference:I

    .line 1145
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldClassificationRequestId:I

    .line 1146
    iput-boolean v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsCredentialRequest:Z

    .line 1147
    iput-boolean v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mWebviewRequestedCredential:Z

    .line 1148
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFilteredFillabaleViewCount:I

    .line 1149
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillableTotalCount:I

    .line 1150
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillFailureCount:I

    .line 1151
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedId:I

    .line 1152
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectionTimestamp:I

    .line 1153
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofilledTimestampMs:I

    .line 1154
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedFirstTimestampMs:I

    .line 1155
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedLastTimestampMs:I

    .line 1156
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedLastTimestampMs:I

    .line 1157
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedVirtualAutofillId:I

    .line 1158
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldFirstLength:I

    .line 1159
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldLastLength:I

    .line 1163
    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillSuccessCount:I

    .line 1164
    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledButUnexpectedCount:I

    .line 1165
    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFailedPriorToRefillCount:I

    .line 1166
    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFailedOnRefillCount:I

    .line 1167
    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledSuccessfullyOnRefillCount:I

    .line 1169
    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFixExpireResponseDuringAuthCount:I

    .line 1170
    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNotifyViewEnteredIgnoredDuringAuthCount:I

    .line 1173
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFailedAutofillIds:Landroid/util/ArraySet;

    .line 1174
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAlreadyFilledAutofillIds:Landroid/util/ArraySet;

    .line 1177
    iput-boolean v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->shouldResetShownCount:Z

    .line 1178
    iput-boolean v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mHasRelayoutLog:Z

    .line 1179
    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillDialogNotShownReason:I

    .line 1180
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillDialogReadyToShowMs:I

    .line 1181
    iput v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mImeAnimationFinishMs:I

    return-void
.end method
