.class public final Lcom/android/server/autofill/PresentationStatsEventLogger;
.super Ljava/lang/Object;
.source "PresentationStatsEventLogger.java"


# instance fields
.field public final mCallingAppUid:I

.field public mEventInternal:Ljava/util/Optional;

.field public final mSessionId:I

.field public final mSessionStartTimestamp:J


# direct methods
.method public static synthetic $r8$lambda$2_M-LRswioqL_cN9fWHavb06cWQ(ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 567
    iput-boolean p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDialogDismissed:Z

    return-void
.end method

.method public static synthetic $r8$lambda$2iCY15AYcjzToHRc7-48sO2bTEM(Lcom/android/server/autofill/PresentationStatsEventLogger;JLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetFillDialogReadyToShowMs$47(JLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2uM1ismps7tYNC9bDsE0RRgP3ds(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 1

    .line 330
    iget v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    if-nez v0, :cond_0

    .line 331
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$47qyeaFw58iOY_uUmF_ryOgsRwg(ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 573
    iput-boolean p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNegativeCtaButtonClicked:Z

    return-void
.end method

.method public static synthetic $r8$lambda$5mCurjGggUvWqpT_BZR8ZPj-u08(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 699
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDetectionPreference:I

    return-void
.end method

.method public static synthetic $r8$lambda$7ZgwylO2i3qPh8Hb-veQDyLpNZ4(Lcom/android/server/autofill/PresentationStatsEventLogger;ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$logWhenDatasetShown$10(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7wSYvJ8UpuKisM1JLJqKpzJK2Pk(Lcom/android/server/autofill/PresentationStatsEventLogger;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeIncrementCountShown$7(Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8sRmcjSGRPiBcJ1yOjPJGajCuow(Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 1

    .line 912
    iget v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNotifyViewEnteredIgnoredDuringAuthCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNotifyViewEnteredIgnoredDuringAuthCount:I

    return-void
.end method

.method public static synthetic $r8$lambda$AHBpxxZLZ3o9KBr-1_LuSWN32pM(Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 1

    .line 904
    iget v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFixExpireResponseDuringAuthCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFixExpireResponseDuringAuthCount:I

    return-void
.end method

.method public static synthetic $r8$lambda$IIlVYYuPbcXw1493I7K2s-cJgdU(Lcom/android/server/autofill/PresentationStatsEventLogger;ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetSelectedDatasetPickReason$32(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jj5ksCRkcBu4ROOPRza7b4-XfEM(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 310
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mRequestId:I

    return-void
.end method

.method public static synthetic $r8$lambda$KOG1Z2ZDRr1G83o1txF4d3VxDEA(Lcom/android/server/autofill/PresentationStatsEventLogger;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$setPresentationSelectedTimestamp$36(Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MttHF3jWZNLdVkQqOv--CfJSIV8(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 2

    .line 533
    iget v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionSentTimestampMs:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 534
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionSentTimestampMs:I

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$OnRnVhd-U4VCAlBxPBgVnt_FB8M(ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 579
    iput-boolean p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mPositiveCtaButtonClicked:Z

    return-void
.end method

.method public static synthetic $r8$lambda$S0nWo7MdotEWpL2a0s1snwlcUgU(Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 1

    const/4 v0, 0x1

    .line 962
    iput-boolean v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mHasRelayoutLog:Z

    return-void
.end method

.method public static synthetic $r8$lambda$SgCg_eAbw7hdbQWog-D3SfUULiY(Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 2

    if-eqz p0, :cond_2

    .line 709
    invoke-virtual {p0}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 713
    :cond_0
    invoke-virtual {p0}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    .line 715
    iget v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldFirstLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 716
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldFirstLength:I

    .line 718
    :cond_1
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldLastLength:I

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$VAqzKIbt82B8nzvKfT571eFwKeI(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 2

    .line 922
    iget v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillDialogNotShownReason:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    const/4 p0, 0x7

    .line 927
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillDialogNotShownReason:I

    return-void

    .line 929
    :cond_1
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillDialogNotShownReason:I

    return-void
.end method

.method public static synthetic $r8$lambda$WV55Uw8UUYev1p8R6i8knfORIc4(ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 317
    iput-boolean p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsCredentialRequest:Z

    return-void
.end method

.method public static synthetic $r8$lambda$WV6cK2z9ug7KiX4ptlbNuWjn1u8(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 512
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillRequestSentTimestampMs:I

    return-void
.end method

.method public static synthetic $r8$lambda$WsXjzVSWKY62PbytJGulmSKWSOc(Lcom/android/server/autofill/PresentationStatsEventLogger;Lcom/android/server/autofill/ViewState;Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$onFieldTextUpdated$35(Lcom/android/server/autofill/ViewState;Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WxhRMQDxQ0RuK7PrMHIcGuaIST0(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 822
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFilteredFillabaleViewCount:I

    return-void
.end method

.method public static synthetic $r8$lambda$ZU3AAYaP-Rf67KwGMwqBLfJmLQ4(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 635
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationResult:I

    return-void
.end method

.method public static synthetic $r8$lambda$ZVhvmskeCTAeZTKLT07XswKyd2I(ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 617
    iput-boolean p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsRequestTriggered:Z

    return-void
.end method

.method public static synthetic $r8$lambda$bWONHov9Ida2vWXavB-WAZDGF_E(Ljava/util/List;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 1

    .line 798
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofillIdsAttemptedAutofill:Landroid/util/ArraySet;

    .line 799
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p0

    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillableTotalCount:I

    return-void
.end method

.method public static synthetic $r8$lambda$cGlnkdTNd7Wirp-iJDndLherFuU(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 2

    .line 358
    iget v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    if-eqz v0, :cond_0

    return-void

    .line 365
    :cond_0
    iget v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    if-nez v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 371
    :cond_1
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    return-void

    .line 367
    :cond_2
    :goto_0
    const-string p0, "PresentationStatsEventLogger"

    const-string p1, "Not setting no presentation reason because it already exists"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic $r8$lambda$edyheXD-DrJsYj7p0TQbL8jTDl8(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 2

    .line 546
    iget v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedTimestampMs:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 547
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedTimestampMs:I

    .line 550
    :cond_0
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedLastTimestampMs:I

    return-void
.end method

.method public static synthetic $r8$lambda$gg_guMDPJ28Y9wU3Pra9VnC6aEU(ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 325
    iput-boolean p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mWebviewRequestedCredential:Z

    return-void
.end method

.method public static synthetic $r8$lambda$h3gdNo_UtJg1hlTa26VoCDrWeOo(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 611
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofillServiceUid:I

    return-void
.end method

.method public static synthetic $r8$lambda$hD8eDAoQcLBIr2ZyMCkNELJtmMI(Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 1

    const/4 v0, 0x1

    .line 414
    iput-boolean v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->shouldResetShownCount:Z

    return-void
.end method

.method public static synthetic $r8$lambda$kIHRHQC8TM1lKJy55394IXZ40OE(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 522
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillResponseReceivedTimestampMs:I

    return-void
.end method

.method public static synthetic $r8$lambda$nDatkP8iwOpTt11W5UjuotO6tJA(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 560
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetId:I

    return-void
.end method

.method public static synthetic $r8$lambda$nq6URDhVBSOjg2oMU0G7O0GfLUM(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 789
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldClassificationRequestId:I

    return-void
.end method

.method public static synthetic $r8$lambda$qXVUB1ki1fTz2wCmZkcUTFrQhLk(Lcom/android/server/autofill/PresentationStatsEventLogger;Ljava/util/List;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeUpdateViewFillablesForRefillAttempt$39(Ljava/util/List;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qgI7eY-C9lPGuMp5qI9SY6pi0U8(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 626
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationType:I

    return-void
.end method

.method public static synthetic $r8$lambda$sAesPPTtVuvEoUw35fL4BJo4wXM(Ljava/util/List;Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 1

    .line 378
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->getDatasetCountForAutofillId(Ljava/util/List;Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;

    move-result-object p0

    .line 379
    iget p1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;->mAvailableCount:I

    iput p1, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailableCount:I

    .line 380
    iget v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;->mAvailablePccCount:I

    iput v0, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccCount:I

    .line 381
    iget p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;->mAvailablePccOnlyCount:I

    iput p0, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccOnlyCount:I

    if-lez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 382
    :goto_0
    iput-boolean p0, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsDatasetAvailable:Z

    return-void
.end method

.method public static synthetic $r8$lambda$sdI_FQ7mzLhvsznHargrTR-Vw6E(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 1

    .line 848
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v0

    iput v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedId:I

    .line 849
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->getVirtualChildIntId()I

    move-result p0

    rem-int/lit8 p0, p0, 0x64

    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedVirtualAutofillId:I

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$tAA_uyzxud3CEe7BPWnnb0q8MLQ(Lcom/android/server/autofill/PresentationStatsEventLogger;Ljava/util/List;ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetViewFillFailureCounts$41(Ljava/util/List;ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v0r_T4wLykXPwkFR_v62-Lt3eBk(Landroid/content/Context;ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 4

    .line 585
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 587
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "No default IME found"

    const-string v3, "PresentationStatsEventLogger"

    if-eqz v1, :cond_0

    .line 588
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 591
    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    .line 593
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 597
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 599
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/16 v1, 0x0

    .line 600
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v1

    .line 599
    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    iput p0, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mInlineSuggestionHostUid:I

    return-void

    .line 602
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Couldn\'t find packageName: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic $r8$lambda$vPAF-ACOIdaVsQzxa4mAbyecWvI(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 5

    .line 862
    iget-object v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofillIdsAttemptedAutofill:Landroid/util/ArraySet;

    .line 863
    const-string v1, "PresentationStatsEventLogger"

    if-nez v0, :cond_0

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted autofill ids is null, but received autofillId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " successfully filled"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledButUnexpectedCount:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledButUnexpectedCount:I

    return-void

    .line 867
    :cond_0
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 868
    iget-object v2, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFailedAutofillIds:Landroid/util/ArraySet;

    .line 869
    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 870
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_1

    .line 871
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Logging autofill refill of id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_1
    iget v1, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledSuccessfullyOnRefillCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledSuccessfullyOnRefillCount:I

    .line 876
    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 878
    :cond_2
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_3

    .line 879
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logging autofill for id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_3
    :goto_0
    iget v1, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillSuccessCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillSuccessCount:I

    .line 884
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 885
    iget-object p1, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAlreadyFilledAutofillIds:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    .line 886
    :cond_4
    iget-object v2, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAlreadyFilledAutofillIds:Landroid/util/ArraySet;

    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Successfully filled autofillId:"

    if-eqz v2, :cond_6

    .line 887
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_5

    .line 888
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " already processed "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    .line 892
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not found in list of attempted autofill ids: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledButUnexpectedCount:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledButUnexpectedCount:I

    return-void
.end method

.method public static synthetic $r8$lambda$vhApJrUYdaTUWbouhJ3fMJ3hObY(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 1

    .line 503
    iget v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDisplayPresentationType:I

    if-nez v0, :cond_0

    .line 505
    invoke-static {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->getDisplayPresentationType(I)I

    move-result p0

    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDisplayPresentationType:I

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$zrMQd83-VJaotFT8WfiC_-0nKzU(Lcom/android/server/autofill/PresentationStatsEventLogger;JLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetImeAnimationFinishMs$48(JLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public constructor <init>(IIJ)V
    .locals 0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput p1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionId:I

    .line 277
    iput p2, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mCallingAppUid:I

    .line 278
    iput-wide p3, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionStartTimestamp:J

    .line 279
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void
.end method

.method public static createPresentationLog(IIJ)Lcom/android/server/autofill/PresentationStatsEventLogger;
    .locals 1

    .line 287
    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/autofill/PresentationStatsEventLogger;-><init>(IIJ)V

    return-object v0
.end method

.method public static getDatasetCountForAutofillId(Ljava/util/List;Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;
    .locals 5

    .line 445
    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;

    invoke-direct {v0}, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;-><init>()V

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    .line 447
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 448
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/Dataset;

    if-eqz v2, :cond_1

    .line 449
    invoke-virtual {v2}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 450
    invoke-virtual {v2}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 451
    iget v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;->mAvailableCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;->mAvailableCount:I

    .line 452
    invoke-virtual {v2}, Landroid/service/autofill/Dataset;->getEligibleReason()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 453
    iget v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;->mAvailablePccOnlyCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;->mAvailablePccOnlyCount:I

    .line 454
    iget v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;->mAvailablePccCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;->mAvailablePccCount:I

    goto :goto_1

    .line 455
    :cond_0
    invoke-virtual {v2}, Landroid/service/autofill/Dataset;->getEligibleReason()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 457
    iget v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;->mAvailablePccCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$CountContainer;->mAvailablePccCount:I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getDisplayPresentationType(I)I
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static getNoPresentationEventReason(I)I
    .locals 2

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 p0, 0x6

    return p0

    :cond_2
    return v1
.end method


# virtual methods
.method public final convertDatasetPickReason(I)I
    .locals 0

    .line 0
    if-eqz p1, :cond_0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method

.method public final getElapsedTime()I
    .locals 4

    .line 767
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionStartTimestamp:J

    sub-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public final synthetic lambda$logWhenDatasetShown$10(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 436
    invoke-virtual {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetSuggestionPresentedTimestampMs()V

    .line 437
    iput p1, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    const/4 p0, 0x1

    .line 438
    iput p0, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    return-void
.end method

.method public final synthetic lambda$maybeIncrementCountShown$7(Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 1

    .line 393
    iget-boolean v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->shouldResetShownCount:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 394
    iput-boolean v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->shouldResetShownCount:Z

    .line 395
    iput v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    .line 398
    :cond_0
    iget v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    if-nez v0, :cond_1

    .line 401
    invoke-virtual {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetSuggestionPresentedTimestampMs()V

    .line 404
    :cond_1
    iget p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    return-void
.end method

.method public final synthetic lambda$maybeSetFillDialogReadyToShowMs$47(JLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 2

    .line 940
    iget-wide v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionStartTimestamp:J

    sub-long/2addr p1, v0

    long-to-int p0, p1

    iput p0, p3, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillDialogReadyToShowMs:I

    return-void
.end method

.method public final synthetic lambda$maybeSetImeAnimationFinishMs$48(JLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 2

    .line 950
    iget-wide v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionStartTimestamp:J

    sub-long/2addr p1, v0

    long-to-int p0, p1

    iput p0, p3, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mImeAnimationFinishMs:I

    return-void
.end method

.method public final synthetic lambda$maybeSetSelectedDatasetPickReason$32(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 690
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->convertDatasetPickReason(I)I

    move-result p0

    iput p0, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetPickedReason:I

    return-void
.end method

.method public final synthetic lambda$maybeSetViewFillFailureCounts$41(Ljava/util/List;ZLcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 1

    .line 832
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz p2, :cond_0

    .line 834
    iput v0, p3, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFailedOnRefillCount:I

    .line 835
    invoke-virtual {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->setHasRelayoutLog()V

    return-void

    .line 837
    :cond_0
    iput v0, p3, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillFailureCount:I

    .line 838
    iput v0, p3, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFailedPriorToRefillCount:I

    .line 839
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p0, p3, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFailedAutofillIds:Landroid/util/ArraySet;

    return-void
.end method

.method public final synthetic lambda$maybeUpdateViewFillablesForRefillAttempt$39(Ljava/util/List;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 1

    .line 809
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofillIdsAttemptedAutofill:Landroid/util/ArraySet;

    .line 812
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFailedAutofillIds:Landroid/util/ArraySet;

    .line 813
    invoke-virtual {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->setHasRelayoutLog()V

    return-void
.end method

.method public final synthetic lambda$onFieldTextUpdated$35(Lcom/android/server/autofill/ViewState;Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 3

    .line 730
    invoke-virtual {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->getElapsedTime()I

    move-result v0

    if-eqz p1, :cond_3

    .line 732
    iget-object v1, p1, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v1

    iget v2, p3, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedId:I

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 740
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->updateTextFieldLength(Landroid/view/autofill/AutofillValue;)V

    .line 743
    invoke-virtual {p1}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_1

    .line 744
    iput v0, p3, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofilledTimestampMs:I

    return-void

    .line 750
    :cond_1
    iget p0, p3, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedFirstTimestampMs:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_2

    .line 751
    iput v0, p3, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedFirstTimestampMs:I

    .line 753
    :cond_2
    iput v0, p3, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedLastTimestampMs:I

    return-void

    .line 734
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bad view state for: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedId:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", state: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PresentationStatsEventLogger"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final synthetic lambda$setPresentationSelectedTimestamp$36(Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .locals 0

    .line 759
    invoke-virtual {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->getElapsedTime()I

    move-result p0

    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectionTimestamp:I

    return-void
.end method

.method public logAndEndEvent(Ljava/lang/String;)V
    .locals 66

    move-object/from16 v0, p0

    .line 970
    iget-object v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const-string v2, "PresentationStatsEventLogger"

    if-nez v1, :cond_0

    .line 971
    const-string v0, "Shouldn\'t be logging AutofillPresentationEventReported again for same event"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 976
    :cond_0
    iget-object v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 977
    iget-boolean v3, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsDatasetAvailable:Z

    if-nez v3, :cond_1

    iget-boolean v3, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mHasRelayoutLog:Z

    if-nez v3, :cond_1

    iget v3, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFixExpireResponseDuringAuthCount:I

    if-gtz v3, :cond_1

    iget v3, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNotifyViewEnteredIgnoredDuringAuthCount:I

    if-gtz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 981
    :goto_0
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_3

    .line 982
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_2

    .line 983
    const-string v5, "IGNORING - following event won\'t be logged: "

    goto :goto_1

    :cond_2
    const-string v5, ""

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Log AutofillPresentationEventReported: requestId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mRequestId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " sessionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mNoPresentationEventReason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mAvailableCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailableCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mCountShown="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mCountFilteredUserTyping="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountFilteredUserTyping:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mCountNotShownImePresentationNotDrawn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountNotShownImePresentationNotDrawn:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mCountNotShownImeUserNotSeen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountNotShownImeUserNotSeen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mDisplayPresentationType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDisplayPresentationType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mAutofillServiceUid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofillServiceUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mInlineSuggestionHostUid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mInlineSuggestionHostUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mIsRequestTriggered="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsRequestTriggered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mFillRequestSentTimestampMs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillRequestSentTimestampMs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mFillResponseReceivedTimestampMs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillResponseReceivedTimestampMs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mSuggestionSentTimestampMs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionSentTimestampMs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mSuggestionPresentedTimestampMs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedTimestampMs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mSelectedDatasetId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mDialogDismissed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDialogDismissed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mNegativeCtaButtonClicked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNegativeCtaButtonClicked:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mPositiveCtaButtonClicked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mPositiveCtaButtonClicked:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mAuthenticationType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mAuthenticationResult="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationResult:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mLatencyAuthenticationUiDisplayMillis="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mLatencyAuthenticationUiDisplayMillis:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mLatencyDatasetDisplayMillis="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mLatencyDatasetDisplayMillis:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mAvailablePccCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mAvailablePccOnlyCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccOnlyCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mSelectedDatasetPickedReason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetPickedReason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mDetectionPreference="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDetectionPreference:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mFieldClassificationRequestId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldClassificationRequestId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mAppPackageUid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mCallingAppUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mIsCredentialRequest="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsCredentialRequest:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mWebviewRequestedCredential="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mWebviewRequestedCredential:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mFilteredFillabaleViewCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFilteredFillabaleViewCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mViewFillableTotalCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillableTotalCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mViewFillFailureCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillFailureCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mFocusedId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mViewFillSuccessCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillSuccessCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mViewFilledButUnexpectedCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledButUnexpectedCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " event.mSelectionTimestamp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectionTimestamp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " event.mAutofilledTimestampMs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofilledTimestampMs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " event.mFieldModifiedFirstTimestampMs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedFirstTimestampMs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " event.mFieldModifiedLastTimestampMs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedLastTimestampMs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " event.mSuggestionPresentedLastTimestampMs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedLastTimestampMs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " event.mFocusedVirtualAutofillId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedVirtualAutofillId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " event.mFieldFirstLength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldFirstLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " event.mFieldLastLength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldLastLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " event.mViewFailedPriorToRefillCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFailedPriorToRefillCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " event.mViewFilledSuccessfullyOnRefillCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledSuccessfullyOnRefillCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " event.mViewFailedOnRefillCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFailedOnRefillCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " event.notExpiringResponseDuringAuthCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFixExpireResponseDuringAuthCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " event.notifyViewEnteredIgnoredDuringAuthCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNotifyViewEnteredIgnoredDuringAuthCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " event.fillDialogNotShownReason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillDialogNotShownReason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " event.fillDialogReadyToShowMs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillDialogReadyToShowMs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " event.imeAnimationFinishMs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mImeAnimationFinishMs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 982
    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v3, :cond_4

    .line 1053
    const-string v1, "Empty dataset. Autofill ignoring log"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void

    .line 1057
    :cond_4
    iget v3, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mRequestId:I

    iget v4, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionId:I

    iget v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    iget v6, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailableCount:I

    iget v7, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    iget v8, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountFilteredUserTyping:I

    iget v9, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountNotShownImePresentationNotDrawn:I

    iget v10, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountNotShownImeUserNotSeen:I

    iget v11, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDisplayPresentationType:I

    iget v12, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofillServiceUid:I

    iget v13, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mInlineSuggestionHostUid:I

    iget-boolean v14, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsRequestTriggered:Z

    iget v15, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillRequestSentTimestampMs:I

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillResponseReceivedTimestampMs:I

    move/from16 v16, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionSentTimestampMs:I

    move/from16 v17, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedTimestampMs:I

    move/from16 v18, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetId:I

    move/from16 v19, v2

    iget-boolean v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDialogDismissed:Z

    move/from16 v20, v2

    iget-boolean v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNegativeCtaButtonClicked:Z

    move/from16 v21, v2

    iget-boolean v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mPositiveCtaButtonClicked:Z

    move/from16 v22, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationType:I

    move/from16 v23, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAuthenticationResult:I

    move/from16 v24, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mLatencyAuthenticationUiDisplayMillis:I

    move/from16 v25, v3

    int-to-long v2, v2

    move-wide/from16 v26, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mLatencyDatasetDisplayMillis:I

    int-to-long v2, v2

    move-wide/from16 v28, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccCount:I

    iget v3, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccOnlyCount:I

    move/from16 v30, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetPickedReason:I

    move/from16 v31, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDetectionPreference:I

    move/from16 v32, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldClassificationRequestId:I

    move/from16 v33, v2

    iget v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mCallingAppUid:I

    move/from16 v34, v2

    iget-boolean v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsCredentialRequest:Z

    move/from16 v35, v2

    iget-boolean v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mWebviewRequestedCredential:Z

    move/from16 v36, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillableTotalCount:I

    move/from16 v37, v3

    int-to-long v2, v2

    move-wide/from16 v38, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillFailureCount:I

    int-to-long v2, v2

    move-wide/from16 v40, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedId:I

    iget v3, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillSuccessCount:I

    move/from16 v42, v2

    int-to-long v2, v3

    move-wide/from16 v43, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledButUnexpectedCount:I

    int-to-long v2, v2

    move-wide/from16 v45, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectionTimestamp:I

    iget v3, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofilledTimestampMs:I

    move/from16 v47, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedFirstTimestampMs:I

    move/from16 v48, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedLastTimestampMs:I

    move/from16 v49, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSuggestionPresentedLastTimestampMs:I

    move/from16 v50, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedVirtualAutofillId:I

    move/from16 v51, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldFirstLength:I

    move/from16 v52, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldLastLength:I

    move/from16 v53, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFilteredFillabaleViewCount:I

    move/from16 v54, v3

    int-to-long v2, v2

    move-wide/from16 v55, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFailedPriorToRefillCount:I

    iget v3, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledSuccessfullyOnRefillCount:I

    move/from16 v57, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFailedOnRefillCount:I

    move/from16 v58, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFixExpireResponseDuringAuthCount:I

    move/from16 v59, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNotifyViewEnteredIgnoredDuringAuthCount:I

    move/from16 v60, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillDialogNotShownReason:I

    move/from16 v61, v2

    iget v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillDialogReadyToShowMs:I

    move/from16 v62, v3

    int-to-long v2, v2

    iget v1, v1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mImeAnimationFinishMs:I

    move-wide/from16 v63, v2

    int-to-long v1, v1

    move/from16 v3, v25

    move-wide/from16 v25, v26

    move-wide/from16 v27, v28

    move/from16 v29, v30

    move/from16 v30, v37

    move-wide/from16 v37, v38

    move-wide/from16 v39, v40

    move/from16 v41, v42

    move-wide/from16 v42, v43

    move-wide/from16 v44, v45

    move/from16 v46, v47

    move/from16 v47, v54

    move-wide/from16 v54, v55

    move/from16 v56, v57

    move/from16 v57, v62

    move-wide/from16 v62, v63

    move-wide/from16 v64, v1

    const/16 v2, 0x1d5

    invoke-static/range {v2 .. v65}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIIIIIIIZIIIIIZZZIIJJIIIIIIZZJJIJJIIIIIIIIJIIIIIIJJ)V

    .line 1113
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void
.end method

.method public logWhenDatasetShown(I)V
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda35;-><init>(Lcom/android/server/autofill/PresentationStatsEventLogger;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public markShownCountAsResettable()V
    .locals 1

    .line 413
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda36;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public declared-synchronized maybeAddSuccessId(Landroid/view/autofill/AutofillId;)V
    .locals 2

    monitor-enter p0

    .line 861
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda24;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda24;-><init>(Landroid/view/autofill/AutofillId;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public maybeIncrementCountShown()V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda31;-><init>(Lcom/android/server/autofill/PresentationStatsEventLogger;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetAuthenticationResult(I)V
    .locals 1

    .line 634
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda25;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda25;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetAuthenticationType(I)V
    .locals 1

    .line 625
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda12;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetAutofillServiceUid(I)V
    .locals 1

    .line 610
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda18;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda18;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetAvailableCount(Ljava/util/List;Landroid/view/autofill/AutofillId;)V
    .locals 1

    .line 377
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda13;-><init>(Ljava/util/List;Landroid/view/autofill/AutofillId;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetDetectionPreference(I)V
    .locals 1

    .line 698
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetDialogDismissed(Z)V
    .locals 1

    .line 566
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda39;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda39;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetDisplayPresentationType(I)V
    .locals 1

    .line 500
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda32;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda32;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetFieldClassificationRequestId(I)V
    .locals 1

    .line 788
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetFillDialogNotShownReason(I)V
    .locals 1

    .line 921
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda23;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda23;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetFillDialogReadyToShowMs(J)V
    .locals 2

    .line 939
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/autofill/PresentationStatsEventLogger;J)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetFillRequestSentTimestampMs(I)V
    .locals 1

    .line 511
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda33;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda33;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetFillResponseReceivedTimestampMs(I)V
    .locals 1

    .line 521
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda38;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda38;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetFilteredFillableViewsCount(I)V
    .locals 1

    .line 821
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda15;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetFocusedId(Landroid/view/autofill/AutofillId;)V
    .locals 1

    .line 846
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda5;-><init>(Landroid/view/autofill/AutofillId;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetImeAnimationFinishMs(J)V
    .locals 2

    .line 949
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/autofill/PresentationStatsEventLogger;J)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetInlinePresentationAndSuggestionHostUid(Landroid/content/Context;I)V
    .locals 1

    .line 584
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda9;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetIsCredentialRequest(Z)V
    .locals 1

    .line 317
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda20;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda20;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetIsNewRequest(Z)V
    .locals 1

    .line 616
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda14;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetNegativeCtaButtonClicked(Z)V
    .locals 1

    .line 572
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda37;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda37;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetNoPresentationEventReason(I)V
    .locals 1

    .line 329
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetNoPresentationEventReasonIfNoReasonExists(I)V
    .locals 1

    .line 356
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda19;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda19;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetNotifyNotExpiringResponseDuringAuth()V
    .locals 1

    .line 903
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda22;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetPositiveCtaButtonClicked(Z)V
    .locals 1

    .line 578
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda40;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda40;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetRequestId(I)V
    .locals 1

    .line 310
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda28;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda28;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetSelectedDatasetId(I)V
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda26;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda26;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 562
    invoke-virtual {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->setPresentationSelectedTimestamp()V

    return-void
.end method

.method public maybeSetSelectedDatasetPickReason(I)V
    .locals 2

    .line 689
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/autofill/PresentationStatsEventLogger;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetSuggestionPresentedTimestampMs()V
    .locals 1

    .line 555
    invoke-virtual {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->getElapsedTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetSuggestionPresentedTimestampMs(I)V

    return-void
.end method

.method public maybeSetSuggestionPresentedTimestampMs(I)V
    .locals 1

    .line 544
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda34;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda34;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetSuggestionSentTimestampMs()V
    .locals 1

    .line 540
    invoke-virtual {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->getElapsedTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetSuggestionSentTimestampMs(I)V

    return-void
.end method

.method public maybeSetSuggestionSentTimestampMs(I)V
    .locals 1

    .line 531
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetViewFillFailureCounts(Ljava/util/List;Z)V
    .locals 2

    .line 831
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/PresentationStatsEventLogger;Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetViewFillablesAndCount(Ljava/util/List;)V
    .locals 1

    .line 797
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda27;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda27;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetWebviewRequestedCredential(Z)V
    .locals 1

    .line 324
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda2;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeUpdateViewFillablesForRefillAttempt(Ljava/util/List;)V
    .locals 2

    .line 807
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/autofill/PresentationStatsEventLogger;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public notifyViewEnteredIgnoredDuringAuthCount()V
    .locals 1

    .line 911
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda17;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onFieldTextUpdated(Lcom/android/server/autofill/ViewState;Landroid/view/autofill/AutofillValue;)V
    .locals 2

    .line 729
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/autofill/PresentationStatsEventLogger;Lcom/android/server/autofill/ViewState;Landroid/view/autofill/AutofillValue;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setHasRelayoutLog()V
    .locals 1

    .line 961
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda30;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setPresentationSelectedTimestamp()V
    .locals 2

    .line 758
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/autofill/PresentationStatsEventLogger;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startNewEvent()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-string v1, "PresentationStatsEventLogger"

    if-eqz v0, :cond_0

    .line 292
    const-string p0, "Failed to start new event because already have active event."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 295
    :cond_0
    const-string v0, "Started new PresentationStatsEvent"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    invoke-direct {v0}, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;-><init>()V

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void
.end method

.method public updateTextFieldLength(Landroid/view/autofill/AutofillValue;)V
    .locals 1

    .line 708
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(Landroid/view/autofill/AutofillValue;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
